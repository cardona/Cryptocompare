//
//  CoinsList+Model.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation

struct CoinsListModel {
    /// Coins data
    var coins: [ItemsListModel]
    /// Total coins
    var total: String
    /// Total coins without price
    var buffer: String
    /// Total coins with prices
    var cached: String
}
//
//struct CoinModel {
//    var identifier: String
//    var name: String
//    var logo: URL
//    var symbol: String
//    var price: String
//}
