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

    init(repository: CoinDetailRepository = DefaultCoinDetailRepository()) {
        self.repository = repository
    }

    func execute(parameters: CoinDetailUseCaseParameters, completion: @escaping (Result<CoinDetailsEntity, SKError>) -> Void) {
        if let symbol = parameters.symbol {
            let params = CoinDetailRepositoryParameters(symbol: [symbol], currency: ["EUR"])
            repository?.request(parameters: params, completion: { result in
                switch result {
                case .success(let decodable):
                    if let raw = decodable.data?[symbol]?["EUR"] as? CoinDetailDecodable {
                        let entity = CoinDetailsEntity(decodable: raw)
                        completion(.success(entity))
                    } else {
                        completion(.failure(.emptyData))
                    }

                case .failure(let error):
                    completion(.failure(error.skError))
                }
            })
        } else {
            completion(.failure(.badRequest))
        }
    }
}
