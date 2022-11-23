//
//  CoinsList+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import XCTest

final class CoinsListJsonMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
   "Response":"Success",
   "Message":"Summary coin list succesfully returned!",
   "Data":{
      "BTCD":{
         "Id":"4400",
         "ImageUrl":"/media/19630/btcd_1.png",
         "Symbol":"BTCD",
         "FullName":"BitcoinDark (BTCD)"
      },
      "CRAIG":{
         "Id":"4425",
         "ImageUrl":"/media/20022/craig.png",
         "Symbol":"CRAIG",
         "FullName":"CraigsCoin (CRAIG)"
      },
      "XBS":{
         "Id":"5023",
         "ImageUrl":"/media/351060/xbs_1.png",
         "Symbol":"XBS",
         "FullName":"Bitstake (XBS)"
      },
      "XPY":{
         "Id":"5030",
         "ImageUrl":"/media/20076/xpy_1.png",
         "Symbol":"XPY",
         "FullName":"PayCoin (XPY)"
      },
      "PRC":{
         "Id":"3638",
         "ImageUrl":"/media/20393/prc.png",
         "Symbol":"PRC",
         "FullName":"ProsperCoin (PRC)"
      }
   },
   "RateLimit":{

   },
   "HasWarning":false,
   "Type":100
}
""".utf8)
    }
}
