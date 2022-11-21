//
//  CoinsList+Decodable.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

struct CoinsListDecodable: Decodable {
    var response: String?
    var message: String?
    var data: [CoinsDecodable]?
    var rateLimit: String?
    var hasWarning: Bool?
    var type: Int?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        response = try container.decodeIfPresent(String.self, forKey: .response)
        message = try container.decodeIfPresent(String.self, forKey: .message)
        data = try container.decodeIfPresent([CoinsDecodable].self, forKey: .data)
        rateLimit = try container.decodeIfPresent(String.self, forKey: .rateLimit)
        hasWarning = try container.decodeIfPresent(Bool.self, forKey: .hasWarning)
        type = try container.decodeIfPresent(Int.self, forKey: .type)
    }
}

extension CoinsListDecodable {
    private enum CodingKeys: String, CodingKey {
        case response = "Response"
        case message = "Message"
        case data = "Data"
        case rateLimit = "RateLimit"
        case hasWarning = "HasWarning"
        case type = "Type"
    }
}
