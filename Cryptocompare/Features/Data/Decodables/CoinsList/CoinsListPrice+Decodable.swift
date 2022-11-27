//
//  CoinsListPrice+Decodable.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

struct CoinsListPriceDecodable: Decodable {
    var name: String?
    var price: Double?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        price = try container.decodeIfPresent(Double.self, forKey: .eur)
    }
}

extension CoinsListPriceDecodable {
    private enum CodingKeys: String, CodingKey {
        case eur = "EUR"
        case name = ""
    }
}
