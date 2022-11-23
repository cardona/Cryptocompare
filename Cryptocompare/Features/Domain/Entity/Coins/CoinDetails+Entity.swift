//
//  CoinDetails+Entity.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation

struct CoinDetailsEntity {
    ///
    var openDay: Double?
    ///
    var highDay: Double?
    ///
    var open24Hour: Double?
    ///
    var high24Hour: Double?
    ///
    var low24Hour: Double?

    init(decodable: CoinDetailDecodable) {
        self.openDay = decodable.openday
        self.highDay = decodable.highday
        self.open24Hour = decodable.open24hour
        self.high24Hour = decodable.high24hour
        self.low24Hour = decodable.low24hour
    }
}
