//
//  CoinDetail+UseCase.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation
import SKRools

protocol CoinDetailUseCase {
    /// Returns currency details
    ///
    /// - Parameters
    ///     - Symbol: The currenty symbol
    ///
    /// - Returns: currency details entity
    func execute(parameters: CoinDetailUseCaseParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void)
}

final class DefaultCoinDetailUseCase: CoinDetailUseCase {
    private var repository: CoinDetailRepository?
    private var config: ConfigUseCase?
    private var coreData: CoinDetailCoreData?

    init(repository: CoinDetailRepository = DefaultCoinDetailRepository(),
         useCase: ConfigUseCase = DefaultConfigUseCase(),
         coreData: CoinDetailCoreData = DefaultCoinDetailCoreData()) {
        self.repository = repository
        self.config = useCase
        self.coreData = coreData
    }

    func execute(parameters: CoinDetailUseCaseParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void) {
        if let apiKey = try? config?.apiKey(), let symbol = parameters.symbol {
            if let cachedItem = coreData?.load(symbol: symbol) {
                completion(.success(cachedItem))
            } else {
                let params = CoinDetailRepositoryParameters(apiKey: apiKey, symbol: [symbol], currency: ["EUR"])

                coinsDetails(symbol: symbol, parameters: params, completion: completion)
            }
        } else {
            completion(.failure(.badRequest))
        }
    }

    func coinsDetails(symbol: String, parameters: CoinDetailRepositoryParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void) {
        repository?.request(parameters: parameters, completion: { [weak self] result in
            switch result {
            case .success(let decodable):
                if let raw = decodable.data?[symbol]?["EUR"] as? CoinDetailDecodable {
                    let entity = CoinDetailsEntity(symbol: symbol, decodable: raw)
                    completion(.success(entity))
                    self?.coreData?.save(identifier: symbol, entity: entity)
                } else {
                    completion(.failure(.emptyData))
                }

            case .failure(let error):
                completion(.failure(error.skError))
            }
        })
    }
}
