//
//  CoinDetailUseCase+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare

final class CoinDetailUseCaseTest: XCTestCase {

    func testCoinDetailUseCaseWhenSuccess() {
        let expt = expectation(description: "Coin detail is returned")

        // GIVEN
        
        // create mocked success repository
        let repository = CoinDetailRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinDetailUseCaseParameters( symbol: "ETH")
        // create mocked success config
        let config = ConfigUseCaseSuccessMock()
        // Inject mocked mockup into useCase
        let useCase: CoinDetailUseCase = DefaultCoinDetailUseCase(repository: repository, useCase: config)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertEqual(entity.openDay, 1102.75)
            case .failure(let error):
                XCTAssertNil(error)
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }
}
