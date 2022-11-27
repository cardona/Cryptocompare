//
//  CoinDetailRepository+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare
@testable import SKRools

final class CoinDetailRepositoryTest: XCTestCase {

    func testCoinDetailRepositoryWhenSuccess() {
        let data  = CoinDetailsJsonMock.makeJsonMock()
        let network = NetworkSessionManagerMock(response: nil, data: data, error: nil)
        let config = NetworkConfigurableMock()
        let networkSer: NetworkService = DefaultNetworkService(config: config, sessionManager: network)
        let dataTransfer: DataTransferService = DefaultDataTransferService(networkService: networkSer)
        let repo: CoinDetailRepository = DefaultCoinDetailRepository(dataTransferService: dataTransfer)

        let param = CoinDetailRepositoryParameters(apiKey: "FAKE", symbol: ["FAKE"], currency: ["FAKE"])
        repo.request(parameters: param, completion: { result in
            switch result {
            case .success(let decodable):
                XCTAssertEqual(decodable.data?.first?.value.first?.value.changehour, 0.7200000000000273)
            case .failure(let error):
                XCTAssertNil(error)
            }
        })

    }
}



class NetworkConfigurableMock: NetworkConfigurable {
    var baseURL: String = "https://mock.com"
    var headers: [String: String] = [:]
    var queryParameters: [String: String] = [:]
}


struct NetworkSessionManagerMock: NetworkSessionManager {
    let response: HTTPURLResponse?
    let data: Data?
    let error: Error?

    func request(_ request: URLRequest, completion: @escaping CompletionHandler) -> NetworkCancellable {
        completion(data, response, error)
        return NetworkTask(dataRequest: nil)
    }
}
