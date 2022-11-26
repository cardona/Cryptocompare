//
//  CoinDetailsList+Model.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import Foundation

enum CoinDetailListType: String {
    case open24h
    case openDay
    case highDay
    case open24Hour
    case high24Hour
    case low24Hour
}

struct CoinDetailListModel {
    var type: CoinDetailListType
    var title: String
}
