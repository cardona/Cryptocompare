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
        // create mocked success config
        let configUseCase = ConfigUseCaseSuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
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

    func testCoinsListPaginateWhenSuccess() {
        let expt = expectation(description: "Paginated elements are returned, in the first iteration 20 elements are returned in the second attempt 40 elements")

        // GIVEN

        // create mocked success repository
        let coinsRepository = CoinsLargeListRepositorySuccessMock()
        // create mocked success repository
        let priceRepository = CoinsLargeListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertEqual(entity.count, 20)
                XCTAssertEqual(entity.first?.fullName, "007 coin (007)")
                XCTAssertEqual(entity[8].fullName, "32Bitcoin (32BIT)")

                useCase.execute(parameters: parameters, completion: { result in
                    // THEN
                    switch result {
                    case .success(let entity):
                        XCTAssertEqual(entity.count, 40)
                        XCTAssertEqual(entity.first?.fullName, "007 coin (007)")
                        XCTAssertEqual(entity[19].fullName, "AcesCoin (AEC)")
                        XCTAssertEqual(entity[20].fullName, "AcidCoin (ACID)")
                    case .failure(let error):
                        XCTAssertNil(error)
                    }
                    expt.fulfill()
                })
            case .failure(let error):
                XCTAssertNil(error)
            }
        })
        wait(for: [expt], timeout: 10)
    }

    func testCoinsListUseCaseWhenEmptyDataSuccess() {
        let expt = expectation(description: "Array without Coins is returned with controlled error")

        // GIVEN

        // create mocked success repository
        let coinsRepository = CoinsListRepositoryEmptyDataSuccessMock()
        // create mocked success repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertNil(entity)
            case .failure(let error):
                switch error {
                case .emptyData:
                    break
                default:
                    XCTFail("Bad error type")
                }
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }

    func testCoinsListUseCaseWhen403Failure() {
        let expt = expectation(description: "A controlled error")

        // GIVEN

        // create mocked failure repository
        let coinsRepository = CoinsListRepository403FailureMock()
        // create mocked failure repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertNil(entity)
            case .failure(let error):
                switch error {
                case .accessDenied:
                    break
                default:
                    XCTFail("Bad error type")
                }
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }

    func testCoinsListUseCaseWhenTimeOutFailure() {
        let expt = expectation(description: "A controlled error")

        // GIVEN

        // create mocked failure repository
        let coinsRepository = CoinsListRepositoryTimeOutFailureMock()
        // create mocked failure repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertNil(entity)
            case .failure(let error):
                switch error {
                case .serviceTimeout:
                    break
                default:
                    XCTFail("Bad error type")
                }
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }

    func testCoinsListUseCaseWhenWithoutInternetFailure() {
        let expt = expectation(description: "A controlled error")

        // GIVEN

        // create mocked failure repository
        let coinsRepository = CoinsListRepositoryNoInternetFailureMock()
        // create mocked failure repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertNil(entity)
            case .failure(let error):
                switch error {
                case .notConnectedToInternet:
                    break
                default:
                    XCTFail("Bad error type \(error.errorDescription ?? "NULL")")
                }
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)

    }

    func testCoinsListEndPaginateWhenSuccess() {
        let expt = expectation(description: "Paginated elements are returned, in the first iteration 20 elements are returned in the second attempt 40 elements")

        // GIVEN

        // create mocked success repository
        let coinsRepository = CoinsListRepositorySuccessMock()
        // create mocked success repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create fake parameters
        let parameters = CoinsListUseCaseParameters(total: 20, symbol: .eur)
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository, priceRepository: priceRepository)

        // WHEN
        useCase.execute(parameters: parameters, completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                XCTAssertEqual(entity.count, 5)
                XCTAssertEqual(entity.first?.fullName, "BitcoinDark (BTCD)")
                XCTAssertEqual(entity[4].fullName, "ProsperCoin (PRC)")
                useCase.execute(parameters: parameters, completion: { result in
                    // THEN
                    switch result {
                    case .success(let entity):
                        XCTAssertEqual(entity.count, 5)
                        XCTAssertEqual(entity.first?.fullName, "BitcoinDark (BTCD)")
                        XCTAssertEqual(entity[4].fullName, "ProsperCoin (PRC)")
                    case .failure(let error):
                        XCTAssertNil(error)
                    }
                    expt.fulfill()
                })
            case .failure(let error):
                XCTAssertNil(error)
            }
        })
        wait(for: [expt], timeout: 10)
    }
}
