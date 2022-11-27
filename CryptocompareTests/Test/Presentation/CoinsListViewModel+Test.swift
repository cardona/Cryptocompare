//
//  CoinsListViewModel+Test.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
@testable import Cryptocompare

final class CoinsListViewModelTest: XCTestCase {

    func testCoinListViewModelWhenSuccess() {
        let expt = expectation(description: "Data is formated to use in view")

        // create mocked success repository
        let coinsRepository = CoinsListRepositorySuccessMock()
        // create mocked success repository
        let priceRepository = CoinsListPriceRepositorySuccessMock()
        // create mocked success config
        let configUseCase = ConfigUseCaseSuccessMock()
        // create mocked success coin price coreData
        let priceCoreData = CoinsListPriceCoreDataMock()
        // create mocked success coreData
        let coinCoreData = CoinsListCoreDataSuccessMock()

        // create mocked success useCase
        let useCase: CoinsListUseCase = DefaultCoinsListUseCase(coinsRepository: coinsRepository,
                                                                priceRepository: priceRepository,
                                                                config: configUseCase,
                                                                coinCoreData: coinCoreData,
                                                                priceCoreData: priceCoreData)

        // Inject mocked mockup into ViewModel
        let viewModel: CoinsListViewModel = DefaultCoinsListViewModel(useCase: useCase, config: configUseCase)


        viewModel.itemsListModel.bind(listener: { model in
            guard let model = model else { return }
            XCTAssertEqual(model.coins.count, 5)
            XCTAssertEqual(model.coins.first?.imageUrl?.absoluteString, "https://www.cryptocompare.com/media/19630/btcd_1.png")
            XCTAssertEqual(model.coins[2].bottomRightText, "0.00297 €")
            XCTAssertEqual(model.coins[3].subtitle, "XPY")

            expt.fulfill()
        })

        viewModel.error.bind(listener: { error in
            XCTAssertNil(error)
        })

        viewModel.viewDidLoad()

        wait(for: [expt], timeout: 10)
    }
}

