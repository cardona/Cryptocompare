//
//  CoinDetailRaw+Decodable.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation

struct CoinDetailDataDecodable: Decodable {
    /// Coin details
    var data: [String: [String: CoinDetailDecodable]]?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decodeIfPresent([String: [String: CoinDetailDecodable]].self, forKey: .data)
    }
}

extension CoinDetailDataDecodable {
    private enum CodingKeys: String, CodingKey {
        case data = "RAW"
    }
}
