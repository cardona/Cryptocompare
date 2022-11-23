//
//  Coins+Decodable.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

struct CoinsDecodable: Decodable {
    /// Coin identifier
    var identifier: String?
    /// Coin Logo Url
    var imageUrl: String?
    /// Coin Symbol
    var symbol: String?
    /// The coin full name
    var fullName: String?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        identifier = try container.decodeIfPresent(String.self, forKey: .identifier)
        imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        fullName = try container.decodeIfPresent(String.self, forKey: .fullName)
    }
}

extension CoinsDecodable {
    private enum CodingKeys: String, CodingKey {
        case identifier = "Id"
        case imageUrl = "ImageUrl"
        case symbol = "Symbol"
        case fullName = "FullName"
    }
}
