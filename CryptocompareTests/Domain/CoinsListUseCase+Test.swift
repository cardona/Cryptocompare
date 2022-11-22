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
        let repository = CoinsListRepositorySuccessMock()
        // Inject mocked mockup into useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(repository: repository)

        // WHEN
        useCase.execute(completion: { result in
            // THEN
            switch result {
            case .success(let entity):
                break
            case .failure(let error):
                break
            }
            expt.fulfill()
        })
        wait(for: [expt], timeout: 10)
    }
}
