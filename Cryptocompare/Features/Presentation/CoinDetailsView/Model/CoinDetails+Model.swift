//
//  CoinDetails+Model.swift
//  Cryptocompare
//
//  Created by oscar on 25/11/22.
//

import Foundation

struct CoinDetailsModel {
    var symbol: String
    var price: String
    var coinDetailsListModel: [CoinDetailListModel]

    init(symbol: String, price: String, coinDetails: [CoinDetailListModel]) {
        self.symbol = symbol
        self.price = price
        self.coinDetailsListModel = coinDetails
    }
}
