//
//  CoinsListRepository+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare
@testable import SKRools

final class CoinsListRepositoryTest: XCTestCase {
    func testCoinsListRepositoryWhenSuccess() {
        let data  = CoinsListJsonMock.makeJsonMock()
        let network = NetworkSessionManagerMock(response: nil, data: data, error: nil)
        let config = NetworkConfigurableMock()
        let networkSer: NetworkService = DefaultNetworkService(config: config, sessionManager: network)
        let dataTransfer: DataTransferService = DefaultDataTransferService(networkService: networkSer)
        let repo: CoinsListRepository = DefaultCoinsListRepository(dataTransferService: dataTransfer)

        let param = CoinsListRepositoryParameters(apiKey: "FAKE")
        repo.request(parameters: param, completion: { result in
            switch result {
            case .success(let decodable):
                XCTAssertEqual(decodable.data?.count, 5)
            case .failure(let error):
                XCTAssertNil(error)
            }
        })

    }
}
