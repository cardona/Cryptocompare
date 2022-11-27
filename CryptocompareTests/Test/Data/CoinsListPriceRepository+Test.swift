//
//  CoinsListPriceRepository+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare
@testable import SKRools

final class CoinsListPriceRepositoryTest: XCTestCase {
    func testCoinsListPriceRepositoryWhenSuccess() {
        let data  = CoinsListPriceMock.makeJsonMock()
        let network = NetworkSessionManagerMock(response: nil, data: data, error: nil)
        let config = NetworkConfigurableMock()
        let networkSer: NetworkService = DefaultNetworkService(config: config, sessionManager: network)
        let dataTransfer: DataTransferService = DefaultDataTransferService(networkService: networkSer)
        let repo: CoinsListPriceRepository = DefaultCoinsListPriceRepository(dataTransferService: dataTransfer)

        let param = CoinsListPriceRepositoryParameters(apiKey: "FAKE", fsyms: ["FAKE"], tsyms: ["FAKE"])
        repo.request(parameters: param, completion: { result in
            switch result {
            case .success(let decodable):
                XCTAssertEqual(decodable.count, 8)
            case .failure(let error):
                XCTAssertNil(error)
            }
        })
    }
}
