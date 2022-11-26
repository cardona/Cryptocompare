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
    func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping(Result<[String: CoinsListPriceDecodable], DataTransferError>) -> Void) -> Cancellable?
}

final class DefaultCoinsListPriceRepository: CoinsListPriceRepository {
    let dataTransferService: DataTransferService

    init(dataTransferService: DataTransferService = DefaultDataTransferService()) {
        self.dataTransferService = dataTransferService
    }

    static func url() -> Endpoint<[String: CoinsListPriceDecodable]> {
        return Endpoint(path: "pricemulti")
    }
}

extension DefaultCoinsListPriceRepository {
    func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping (Result<[String: CoinsListPriceDecodable], DataTransferError>) -> Void) -> Cancellable? {
        let url = DefaultCoinsListPriceRepository.url()
        url.method = .get

        let symbols = parameters.fsyms?.joined(separator: ",")
        let currency = parameters.tsyms?.joined(separator: ",")
        var param: [String: Any] = [:]
        param["fsyms"] = symbols
        param["tsyms"] = currency

        url.queryParameters = param
        url.headerParamaters = ["authorization": "Apikey \(parameters.apiKey)"]

        let networkTask = self.dataTransferService.request(with: url, completion: completion)

        return RepositoryTask(networkTask: networkTask)
    }
}
