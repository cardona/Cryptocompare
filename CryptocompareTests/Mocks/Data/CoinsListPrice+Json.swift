//
//  CoinsListPrice+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import XCTest

final class CoinsListPriceMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
   "ETH":{
      "BTC":0.06986,
      "USD":1123.02,
      "EUR":1090.61
   },
   "CRAIG":{
      "BTC":1.9e-7,
      "USD":0.003054,
      "EUR":0.002967
   },
   "DASH":{
      "BTC":0.002275,
      "USD":36.6,
      "EUR":35.5
   }
}
""".utf8)
    }
}
