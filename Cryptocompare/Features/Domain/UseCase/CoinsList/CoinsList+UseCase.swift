//
//  CoinsList+UseCase.swift
//  Cryptocompare
//
//  Created by oscar on 22/11/22.
//

import Foundation
import SKRools

typealias CompletionBlock = (Result<[CoinEntity], SKError>) -> Void

protocol CoinsListUseCase {
    /// Returns all the currencies in the list in a paginated way,
    /// you can modify the pagination offset and the output currency via the parameters
    ///
    /// - Parameters
    ///     - Total: The total number of items you receive in each page
    ///     - Symbol: Determines the output currency type
    ///
    /// - Returns: An array with the list of coins or an error if something goes wrong
    func execute(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock)
}

final class DefaultCoinsListUseCase: CoinsListUseCase {
    private var coinsRepository: CoinsListRepository?
    private var priceRepository: CoinsListPriceRepository?
    private var coinCoreData: CoinsListCoreData?
    private var priceCoreData: CoinsListPriceCoreData?
    private var config: ConfigUseCase?
    private var noPriceCoins: [CoinEntity]?
    private var currentCoins: [CoinEntity]? = []

    init(coinsRepository: CoinsListRepository = DefaultCoinsListRepository(),
         priceRepository: CoinsListPriceRepository = DefaultCoinsListPriceRepository(),
         config: ConfigUseCase = DefaultConfigUseCase(),
         coinCoreData: CoinsListCoreData = DefaultCoinsListCoreData(),
         priceCoreData: CoinsListPriceCoreData = DefaultCoinsListPriceCoreData()) {
        self.coinsRepository = coinsRepository
        self.priceRepository = priceRepository
        self.config = config
        self.coinCoreData = coinCoreData
        self.priceCoreData = priceCoreData
    }

    func execute(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock) {
        if let currentCoins = currentCoins, noPriceCoins?.isEmpty ?? false {
            // Returns cached coins
            completion(.success(currentCoins))
        } else if noPriceCoins == nil {
            // initialitze the cache
            noPriceCoins = []
            // Prepare coins buffer
            retrieveCoinsList(completion: { [weak self] error in
                if let error = error {
                    completion(.failure(error))
                } else {
                    // Request from the next items
                    self?.retrieveCoinPrice(parameters: parameters, completion: completion)
                }
            })
        } else {
            // Request from the next items
            retrieveCoinPrice(parameters: parameters, completion: completion)
        }
    }
}

// MARK: - Coins List
private extension DefaultCoinsListUseCase {
    /// Retrieves the entire list of coins from the API,
    /// uses the summary parameter to reduce the total data downloaded
    ///
    /// - Returns: An error if the service fails or nil if everything ends well
    private func retrieveCoinsList(completion: @escaping (SKError?) -> Void) {
        guard let apiKey = try? config?.apiKey() else {
            completion(.badRequest)
            return
        }

        if let storedData = coinCoreData?.load(), !storedData.isEmpty {
            noPriceCoins = storedData.sorted()
            completion(nil)
        } else {
            let params = CoinsListRepositoryParameters(apiKey: apiKey, summary: true)
            coinsRepository?.request(parameters: params, completion: { [weak self] result in
                switch result {
                case .success(let decodable):
                    self?.makeCoinsList(decodable: decodable, completion: completion)
                case .failure(let error):
                    completion(error.skError)
                }
            })
        }
    }

    /// Parses all items in the list to entities and sorts them in alphabetical order
    ///
    /// - Parameters
    ///    - decodable: a CoinsListDecodable
    ///
    /// - Returns: An error if the service fails or nil if everything ends well
    private func makeCoinsList(decodable: CoinsListDecodable, completion: @escaping (SKError?) -> Void) {
        if let data = decodable.data {
            var currentBuffer: [CoinEntity] = []
            for (_, value) in data {
                let entity = CoinEntity(decodable: value)
                currentBuffer.append(entity)
            }
            noPriceCoins = currentBuffer.sorted()
            if let coinsList = noPriceCoins {
                print("count: \(coinsList.count)")
                coinCoreData?.save(entity: coinsList)
            }
            completion(nil)
        } else {
            completion(.emptyData)
        }
    }
}

// MARK: - Price List
private extension DefaultCoinsListUseCase {
    /// Use the repository to requests the api for the price of a group of coins
    ///
    /// - Parameters
    ///     - Total: The total number of items you receive in each page
    ///     - Symbol: Determines the output currency type
    ///
    /// - Returns: An array with the list of coins or an error if something goes wrong
    private func retrieveCoinPrice(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock) {
        guard let apiKey = try? config?.apiKey() else {
            completion(.failure(.badRequest))
            return
        }
        let nextCoins = nextCoinsWithoutPrice(number: parameters.total)
        let symbols = nextCoins.compactMap { $0.symbol }

        if let entity = priceCoreData?.load(symbols: symbols), !entity.isEmpty {
            currentCoins?.append(contentsOf: entity.sorted())
            completion(.success(entity))
        } else {
            let currency = parameters.outputSymbol.rawValue.uppercased()
            let params = CoinsListPriceRepositoryParameters(apiKey: apiKey, fsyms: symbols, tsyms: [currency])

            priceRepository?.request(parameters: params, completion: { [weak self] result in
                switch result {
                case .success(let decodable):
                    self?.matchCoinPrice(decodable: decodable, nextCoins: nextCoins, completion: completion)
                case .failure(let error):
                    switch error {
                    case .notConnectedToInternet:
                        if let coins = self?.currentCoins {
                            completion(.success(coins))
                        } else {
                            completion(.failure(.notConnectedToInternet))
                        }
                    default:
                        completion(.failure(error.skError))
                    }
                }
            })
        }
    }

    /// Retrieves a specified number of items from the coin list with no price
    ///
    /// - Parameters
    ///     - number: Maximum items to receive
    private func nextCoinsWithoutPrice(number: Int) -> [CoinEntity] {
        guard let bufferCoins = noPriceCoins else { return [] }

        if bufferCoins.count > number, let nextCoins = noPriceCoins?[0...number - 1] {
            noPriceCoins?.removeFirst(number)

                return Array(nextCoins)
        } else {
            noPriceCoins?.removeFirst(bufferCoins.count)

            return bufferCoins
        }
    }
}

// MARK: - Match Coin Price
private extension DefaultCoinsListUseCase {
    /// Parses all price items and match with their coin
    ///  if a coin does not have a match it is discarded, when the entire list
    ///  of items has a price, the coins are added to the currentCoins
    ///
    /// - Parameters
    ///    - decodable: an array of dictionaries where the key is the symbol and the value is the price
    ///
    /// - Returns: An error if the service fails or nil if everything ends well
    private func matchCoinPrice(decodable: [String: CoinsListPriceDecodable], nextCoins: [CoinEntity], completion: @escaping CompletionBlock) {
        var coins: [CoinEntity] = []
        for (key, value) in decodable {
            if var coin = nextCoins.first(where: { $0.symbol == key }) {
                if let price = value.price, price > 0 {
                    coin.price = value.price
                    coins.append(coin)
                }
            }
        }
        currentCoins?.append(contentsOf: coins.sorted())
        if let currentCoins = currentCoins, !coins.isEmpty {
            priceCoreData?.save(entity: coins)
            completion(.success(currentCoins))
        } else {
            completion(.failure(SKError.emptyData))
        }
    }
}
