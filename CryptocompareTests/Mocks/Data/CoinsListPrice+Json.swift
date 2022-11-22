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
   "BTCD":{
      "EUR":48.45
   },
   "XPY":{
      "EUR":0.001213
   },
   "XBS":{
      "EUR":0.8656
   },
   "PRC":{
      "EUR":0.01079
   },
   "ETH":{
      "EUR":1092.64
   },
   "BTC":{
      "EUR":15631.28
   },
   "CRAIG":{
      "EUR":0.00297
   },
   "DASH":{
      "EUR":35.62
   }
}
""".utf8)
    }
}
