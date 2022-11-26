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

    init(repository: CoinDetailRepository = DefaultCoinDetailRepository(), useCase: ConfigUseCase = DefaultConfigUseCase()) {
        self.repository = repository
        self.config = useCase
    }

    func execute(parameters: CoinDetailUseCaseParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void) {
        if let apiKey = try? config?.apiKey(), let symbol = parameters.symbol {
            let params = CoinDetailRepositoryParameters(apiKey: apiKey, symbol: [symbol], currency: ["EUR"])

            coinsDetails(symbol: symbol, parameters: params, completion: completion)
        } else {
            completion(.failure(.badRequest))
        }
    }

    func coinsDetails(symbol: String, parameters: CoinDetailRepositoryParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void) {
        repository?.request(parameters: parameters, completion: { result in
            switch result {
            case .success(let decodable):
                if let raw = decodable.data?[symbol]?["EUR"] as? CoinDetailDecodable {
                    let entity = CoinDetailsEntity(symbol: symbol, decodable: raw)
                    completion(.success(entity))
                } else {
                    completion(.failure(.emptyData))
                }

            case .failure(let error):
                completion(.failure(error.skError))
            }
        })
    }
}
