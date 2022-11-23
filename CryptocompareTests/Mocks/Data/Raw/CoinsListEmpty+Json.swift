//
//  CoinsListEmpty+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import Foundation
import XCTest

final class CoinsListEmptyJsonMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
   "Response":"Success",
   "Message":"Summary coin list succesfully returned!",
   "Data":{},
   "RateLimit":{

   },
   "HasWarning":false,
   "Type":100
}
""".utf8)
    }
}
