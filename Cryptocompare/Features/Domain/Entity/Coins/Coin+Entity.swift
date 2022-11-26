//
//  Coin+Entity.swift
//  Cryptocompare
//
//  Created by oscar on 22/11/22.
//

import Foundation

struct CoinEntity: Comparable {
    /// Coin identifier
    var identifier: String?
    /// Coin Logo Url
    var imageUrl: String?
    /// Coin Symbol
    var symbol: String?
    /// The coin full name
    var fullName: String?
    /// Coin price
    var price: Double?

    init(decodable: CoinsDecodable) {
        self.identifier = decodable.identifier
        self.imageUrl = decodable.imageUrl
        self.symbol = decodable.symbol
        self.fullName = decodable.fullName
    }

    init(coreData: CoinCoreData?) {
        self.identifier = coreData?.identifier
        self.imageUrl = coreData?.imageUrl
        self.symbol = coreData?.symbol
        self.fullName = coreData?.fullName
    }

    init(coreData: CoinPriceCoreData?) {
        self.identifier = coreData?.identifier
        self.imageUrl = coreData?.imageUrl
        self.symbol = coreData?.symbol
        self.fullName = coreData?.fullName
        self.price = coreData?.price
    }

    static func < (lhs: CoinEntity, rhs: CoinEntity) -> Bool {
        return lhs.fullName ?? "" < rhs.fullName ?? ""
    }
}
