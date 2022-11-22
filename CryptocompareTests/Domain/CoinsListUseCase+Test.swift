//
//  CoinsListUseCase+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare

final class CoinsListUseCaseTest: XCTestCase {

    func testCoinsListUseCaseWhenSuccess() {
        let expt = expectation(description: "Array with Coins is returned")

        // GIVEN

        // create mocked success repository
        let coinsRepository = CoinsListRepositorySuccessMock()
        // create mocked success repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()

        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertEqual(entity.count, 5)
                XCTAssertEqual(entity.first?.fullName, "BitcoinDark (BTCD)")
                XCTAssertEqual(entity.first?.symbol, "BTCD")
                XCTAssertEqual(entity.first?.price, 48.45)
                XCTAssertEqual(entity.first?.imageUrl, "/media/19630/btcd_1.png")
                XCTAssertEqual(entity.first?.identifier, "4400")
                XCTAssertEqual(entity[4].symbol, "PRC")
                XCTAssertEqual(entity[4].price, 0.01079)
            case .failure(let error):
                XCTAssertNil(error)
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }

    func testCoinsListUseCaseWhenEmptyDataSuccess() {
        let expt = expectation(description: "Array without Coins is returned")

    }

    func testCoinsListUseCaseWhen403Failure() {
        let expt = expectation(description: "A controlled error")

    }

    func testCoinsListUseCaseWhen500Failure() {
        let expt = expectation(description: "A controlled error")

    }

    func testCoinsListUseCaseWhenWithoutInternetFailure() {
        let expt = expectation(description: "A controlled error")

    }

    func testCoinsListUseCaseWhenWithoutInternetSuccess() {
        let expt = expectation(description: "A controlled error")

    }
}
