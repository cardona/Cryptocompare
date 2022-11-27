//
//  CoinDetailsCoreData+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
import SKRools
@testable import Cryptocompare

final class CoinDetailsCoreDataSuccessMock: CoinDetailCoreData {
    func save(identifier: String, entity: CoinDetailsEntity) {
        // Nothimg to do
    }

    func load(symbol: String) -> CoinDetailsEntity? {
        return nil
    }
}
