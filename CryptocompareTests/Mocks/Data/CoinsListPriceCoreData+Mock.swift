//
//  CoinsListPriceCoreData+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
import SKRools
@testable import Cryptocompare

final class CoinsListPriceCoreDataMock: CoinsListPriceCoreData {
    func save(entity: [Cryptocompare.CoinEntity]) {
        // Nothimg to do
    }

    func load(symbols: [String]) -> [CoinEntity]? {
        return nil
    }

    func stats() {
        // Nothimg to do
    }
}
