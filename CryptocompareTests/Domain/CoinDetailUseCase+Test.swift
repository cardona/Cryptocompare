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
        let parameters = CoinDetailUseCaseParameters(symbol: "ETH")
        // Inject mocked mockup into useCase
        let useCase: CoinDetailUseCase = DefaultCoinDetailUseCase(repository: repository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertEqual(entity.openDay, 1102.75)
//                XCTAssertEqual(entity, "BitcoinDark (BTCD)")
//                XCTAssertEqual(entity.first?.symbol, "BTCD")
//                XCTAssertEqual(entity.first?.price, 48.45)
//                XCTAssertEqual(entity.first?.imageUrl, "/media/19630/btcd_1.png")
//                XCTAssertEqual(entity.first?.identifier, "4400")
//                XCTAssertEqual(entity[4].symbol, "PRC")
//                XCTAssertEqual(entity[4].price, 0.01079)
            case .failure(let error):
                XCTAssertNil(error)
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }
}
