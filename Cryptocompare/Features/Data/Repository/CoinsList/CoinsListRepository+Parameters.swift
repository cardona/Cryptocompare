//
//  CoinsListRepository+Parameters.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

struct CoinsListRepositoryParameters {
    /// If set to true it will only return Id, ImageUrl, Symbol, FullName for each coin.
    /// Only works with the full list of coins. [ Default - false]
    var summary: Bool?
}
