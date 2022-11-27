//
//  CoinDetails+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import XCTest

final class CoinDetailsJsonMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
   "RAW":{
      "ETH":{
         "EUR":{
            "TYPE":"5",
            "MARKET":"CCCAGG",
            "FROMSYMBOL":"ETH",
            "TOSYMBOL":"EUR",
            "FLAGS":"2049",
            "PRICE":1123.81,
            "LASTUPDATE":1669235583,
            "MEDIAN":1123.45,
            "LASTVOLUME":0.1266,
            "LASTVOLUMETO":142.356636,
            "LASTTRADEID":"73768946",
            "VOLUMEDAY":43855.819252201145,
            "VOLUMEDAYTO":49278133.37908071,
            "VOLUME24HOUR":48953.30427245,
            "VOLUME24HOURTO":54865347.38612963,
            "OPENDAY":1102.75,
            "HIGHDAY":1143.25,
            "LOWDAY":1093.41,
            "OPEN24HOUR":1093.82,
            "HIGH24HOUR":1147.06,
            "LOW24HOUR":1089.04,
            "LASTMARKET":"Binance",
            "VOLUMEHOUR":1644.8387536299965,
            "VOLUMEHOURTO":1844327.2427062355,
            "OPENHOUR":1123.09,
            "HIGHHOUR":1123.81,
            "LOWHOUR":1118,
            "TOPTIERVOLUME24HOUR":48953.30427245,
            "TOPTIERVOLUME24HOURTO":54865347.38612963,
            "CHANGE24HOUR":29.99000000000001,
            "CHANGEPCT24HOUR":2.7417673840302803,
            "CHANGEDAY":21.059999999999945,
            "CHANGEPCTDAY":1.9097710269780046,
            "CHANGEHOUR":0.7200000000000273,
            "CHANGEPCTHOUR":0.0641088425682739,
            "CONVERSIONTYPE":"direct",
            "CONVERSIONSYMBOL":"",
            "SUPPLY":122373866.2178,
            "MKTCAP":137524974594.22583,
            "MKTCAPPENALTY":0,
            "CIRCULATINGSUPPLY":122373866.2178,
            "CIRCULATINGSUPPLYMKTCAP":137524974594.22583,
            "TOTALVOLUME24H":3616628.8446776047,
            "TOTALVOLUME24HTO":4064254796.4488463,
            "TOTALTOPTIERVOLUME24H":3610809.3602761123,
            "TOTALTOPTIERVOLUME24HTO":4057714801.683605,
            "IMAGEURL":"/media/37746238/eth.png"
         }
      }
   },
   "DISPLAY":{
      "ETH":{
         "EUR":{
            "FROMSYMBOL":"Ξ",
            "TOSYMBOL":"€",
            "MARKET":"CryptoCompare Index",
            "PRICE":"€ 1,123.81",
            "LASTUPDATE":"Just now",
            "LASTVOLUME":"Ξ 0.1266",
            "LASTVOLUMETO":"€ 142.36",
            "LASTTRADEID":"73768946",
            "VOLUMEDAY":"Ξ 43,855.8",
            "VOLUMEDAYTO":"€ 49,278,133.4",
            "VOLUME24HOUR":"Ξ 48,953.3",
            "VOLUME24HOURTO":"€ 54,865,347.4",
            "OPENDAY":"€ 1,102.75",
            "HIGHDAY":"€ 1,143.25",
            "LOWDAY":"€ 1,093.41",
            "OPEN24HOUR":"€ 1,093.82",
            "HIGH24HOUR":"€ 1,147.06",
            "LOW24HOUR":"€ 1,089.04",
            "LASTMARKET":"Binance",
            "VOLUMEHOUR":"Ξ 1,644.84",
            "VOLUMEHOURTO":"€ 1,844,327.2",
            "OPENHOUR":"€ 1,123.09",
            "HIGHHOUR":"€ 1,123.81",
            "LOWHOUR":"€ 1,118.00",
            "TOPTIERVOLUME24HOUR":"Ξ 48,953.3",
            "TOPTIERVOLUME24HOURTO":"€ 54,865,347.4",
            "CHANGE24HOUR":"€ 29.99",
            "CHANGEPCT24HOUR":"2.74",
            "CHANGEDAY":"€ 21.06",
            "CHANGEPCTDAY":"1.91",
            "CHANGEHOUR":"€ 0.72",
            "CHANGEPCTHOUR":"0.06",
            "CONVERSIONTYPE":"direct",
            "CONVERSIONSYMBOL":"",
            "SUPPLY":"Ξ 122,373,866.2",
            "MKTCAP":"€ 137.52 B",
            "MKTCAPPENALTY":"0 %",
            "CIRCULATINGSUPPLY":"Ξ 122,373,866.2",
            "CIRCULATINGSUPPLYMKTCAP":"€ 137.52 B",
            "TOTALVOLUME24H":"Ξ 3.62 M",
            "TOTALVOLUME24HTO":"€ 4.06 B",
            "TOTALTOPTIERVOLUME24H":"Ξ 3.61 M",
            "TOTALTOPTIERVOLUME24HTO":"€ 4.06 B",
            "IMAGEURL":"/media/37746238/eth.png"
         }
      }
   }
}
""".utf8)
    }
}
