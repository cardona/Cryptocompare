//
//  CoinDetails+Model.swift
//  Cryptocompare
//
//  Created by oscar on 25/11/22.
//

import Foundation

struct CoinDetailsModel {
    var openDay: String
    ///
    var highDay: String?
    ///
    var open24Hour: String?
    ///
    var high24Hour: String?
    ///
    var low24Hour: String?

    init(entity: CoinDetailsEntity) {
        self.openDay = String(entity.openDay ?? 0)
        self.highDay = String(entity.highDay ?? 0)
        self.open24Hour = String(entity.open24Hour ?? 0)
        self.high24Hour = String(entity.high24Hour ?? 0)
        self.low24Hour = String(entity.low24Hour ?? 0)
    }
}
