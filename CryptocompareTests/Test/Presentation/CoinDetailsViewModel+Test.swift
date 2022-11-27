//
//  CoinDetailsViewModel+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare

final class CoinDetailsViewModelTest: XCTestCase {

    func testCoinDetailsViewModelWhenSuccess() {
        let expt = expectation(description: "Data is formated to use in view")

        // create mocked success repository
        let coinDetailsRepository = CoinDetailRepositorySuccessMock()
        // create mocked success config
        let configUseCase = ConfigUseCaseSuccessMock()
        // create mocked success coreData
        let coinCoreData = CoinDetailsCoreDataSuccessMock()

        // create mocked success useCase
        let useCase: CoinDetailUseCase = DefaultCoinDetailUseCase(repository: coinDetailsRepository,
                                                                  useCase: configUseCase,
                                                                  coreData: coinCoreData)

        // Inject mocked mockup into ViewModel
        let viewModel: CoinDetailsViewModel = DefaultCoinDetailsViewModel(useCase: useCase, config: configUseCase)


        viewModel.model.bind(listener: { model in
            guard let model = model else { return }
            XCTAssertEqual(model.price, "1123.81 €")
            XCTAssertEqual(model.symbol, "ETH")
            XCTAssertEqual(model.coinDetailsListModel.first?.title, "1102.75")

            expt.fulfill()
        })

        viewModel.error.bind(listener: { error in
            XCTAssertNil(error)
        })

        viewModel.coinDetails(symbol: "ETH")

        wait(for: [expt], timeout: 10)
    }
}

