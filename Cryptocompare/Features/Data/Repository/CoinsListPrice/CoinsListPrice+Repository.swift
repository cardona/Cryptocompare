//
//  CoinsListPrice+Repository.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import SKRools

protocol CoinsListPriceRepository {
    @discardableResult
    func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping(Result<CoinsListPriceDecodable, DataTransferError>) -> Void) -> Cancellable?
}

final class DefaultCoinsListPriceRepository: CoinsListPriceRepository {
    let dataTransferService: DataTransferService

    init(dataTransferService: DataTransferService = DefaultDataTransferService()) {
        self.dataTransferService = dataTransferService
    }

    static func url() -> Endpoint<CoinsListPriceDecodable> {
        return Endpoint(path: "/pricemulti")
    }
}

extension DefaultCoinsListPriceRepository {
    func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping (Result<CoinsListPriceDecodable, DataTransferError>) -> Void) -> Cancellable? {
        let url = DefaultCoinsListPriceRepository.url()
        url.method = .get

        let networkTask = self.dataTransferService.request(with: url, completion: completion)

        return RepositoryTask(networkTask: networkTask)
    }
}
