//
//  CoinsListCoreData+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import Foundation
import XCTest
import SKRools
@testable import Cryptocompare

final class CoinsListCoreDataSuccessMock: CoinsListCoreData {
    func save(entity: [Cryptocompare.CoinEntity]) {
        // Nothing to do
    }

    func load() -> [Cryptocompare.CoinEntity]? {
        return nil
    }

    func delete(delete entity: [Cryptocompare.CoinEntity]) {
        // Nothing to do
    }
}
