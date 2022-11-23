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
    func execute(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock)
}

final class DefaultCoinsListUseCase: CoinsListUseCase {
    private var coinsRepository: CoinsListRepository?
    private var priceRepository: CoinsListPriceRepository?
    private var bufferCoins: [CoinEntity]?
    private var currentCoins: [CoinEntity]? = []

    init(coinsRepository: CoinsListRepository = DefaultCoinsListRepository(),
         priceRepository: CoinsListPriceRepository = DefaultCoinsListPriceRepository()) {
        self.coinsRepository = coinsRepository
        self.priceRepository = priceRepository
    }

    func execute(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock) {
        if let currentCoins = currentCoins, bufferCoins?.isEmpty ?? false {
            // Returns cached coins
            completion(.success(currentCoins))
        } else if bufferCoins == nil {
            // initialitze the cache
            bufferCoins = []
            // Prepare coins buffer
            makeBufferCoinsList(completion: completion)
        } else {
            // Request from the next items
            matchCoinPrice(parameters: parameters, completion: completion)
        }
    }

    private func makeBufferCoinsList(completion: @escaping CompletionBlock) {
        let params = CoinsListRepositoryParameters(summary: true)
        coinsRepository?.request(parameters: params, completion: { [weak self] result in
            switch result {
            case .success(let decodable):
                if let data = decodable.data {
                    var currentBuffer: [CoinEntity] = []
                    for (_, value) in data {
                        let entity = CoinEntity(decodable: value)
                        currentBuffer.append(entity)
                    }
                    self?.bufferCoins = currentBuffer.sorted()
                    self?.matchCoinPrice(parameters: CoinsListUseCaseParameters(total: 20), completion: completion)
                } else {
                    completion(.failure(.emptyData))
                }
            case .failure(let error):
                completion(.failure(error.skError))
            }
        })
    }

    private func matchCoinPrice(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock) {
        let nextCoins = nextCoinsWithoutPrice(number: parameters.total)
        let symbols = nextCoins.compactMap { $0.symbol }
        let params = CoinsListPriceRepositoryParameters(fsyms: symbols, tsyms: ["EUR"])

        priceRepository?.request(parameters: params, completion: { [weak self] result in
            switch result {
            case .success(let decodable):
                var coins: [CoinEntity] = []
                for (key, value) in decodable {
                    if var coin = nextCoins.first(where: { $0.symbol == key }) {
                        if let price = value.price, price > 0 {
                            coin.price = value.price
                            coins.append(coin)
                        }
                    }
                }
                self?.currentCoins?.append(contentsOf: coins.sorted())
                if let currentCoins = self?.currentCoins, !coins.isEmpty {
                    completion(.success(currentCoins))
                } else {
                    completion(.failure(SKError.emptyData))
                }
            case .failure(let error):
                completion(.failure(error.skError))
            }
        })
    }

    private func nextCoinsWithoutPrice(number: Int) -> [CoinEntity] {
        guard let currentBuffer = bufferCoins else { return [] }

        if currentBuffer.count > number, let nextCoins = bufferCoins?[0...number - 1] {
                bufferCoins?.removeFirst(number)

                return Array(nextCoins)
        } else {
            bufferCoins?.removeFirst(currentBuffer.count)

            return currentBuffer
        }
    }
}
