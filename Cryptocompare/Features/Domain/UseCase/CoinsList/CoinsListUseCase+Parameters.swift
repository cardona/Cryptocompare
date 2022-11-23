//
//  CoinsListUseCase+Parameters.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation

enum Symbol: String {
    case eur
    case usd
    case btc
    case eth
}

struct CoinsListUseCaseParameters {
    /// Max items you want to retrieve.
    var total: Int
    /// output currency
    var symbol: Symbol
}
