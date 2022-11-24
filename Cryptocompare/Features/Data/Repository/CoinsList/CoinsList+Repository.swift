//
//  CoinsList+Repository.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import SKRools

protocol CoinsListRepository {
    @discardableResult
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping(Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable?
}

final class DefaultCoinsListRepository: CoinsListRepository {
    let dataTransferService: DataTransferService

    init(dataTransferService: DataTransferService = DefaultDataTransferService()) {
        self.dataTransferService = dataTransferService
    }

    static func url() -> Endpoint<CoinsListDecodable> {
        return Endpoint(path: "all/coinlist")
    }
}

extension DefaultCoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        let url = DefaultCoinsListRepository.url()
        url.method = .get

        url.headerParamaters = ["authorization": "Apikey \(parameters.apiKey)"]

        let networkTask = self.dataTransferService.request(with: url, completion: completion)

        return RepositoryTask(networkTask: networkTask)
    }
}
