//
//  CoinDetail+Repository.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation
import SKRools

//typealias CoinDetailResultType = [String: [String: [String: CoinDetailDecodable]]]
typealias CoinDetailResultType = CoinDetailDataDecodable

protocol CoinDetailRepository {
    @discardableResult
    func request(parameters: CoinDetailRepositoryParameters, completion: @escaping(Result<CoinDetailResultType, DataTransferError>) -> Void) -> Cancellable?
}

final class DefaultCoinDetailRepository: CoinDetailRepository {
    let dataTransferService: DataTransferService

    init(dataTransferService: DataTransferService = DefaultDataTransferService()) {
        self.dataTransferService = dataTransferService
    }

    static func url() -> Endpoint<CoinDetailResultType> {
        return Endpoint(path: "/pricemultifull")
    }
}

extension DefaultCoinDetailRepository {
    func request(parameters: CoinDetailRepositoryParameters, completion: @escaping (Result<CoinDetailResultType, DataTransferError>) -> Void) -> Cancellable? {
        let url = DefaultCoinDetailRepository.url()
        url.method = .get

        let symbols = parameters.symbol?.joined(separator: ",")
        let currency = parameters.currency?.joined(separator: ",")
        var param: [String: Any] = [:]
        param["fsyms"] = symbols
        param["tsyms"] = currency

        let networkTask = self.dataTransferService.request(with: url, completion: completion)

        return RepositoryTask(networkTask: networkTask)
    }
}
