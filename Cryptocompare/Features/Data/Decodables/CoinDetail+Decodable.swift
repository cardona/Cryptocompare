//
//  CoinDetail+Decodable.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation




struct CoinDetailDataDecodable: Decodable {
    var data: [String: [String: CoinDetailDecodable]]?

    // swiftlint:disable:next: function_body_length
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decodeIfPresent([String: [String: CoinDetailDecodable]].self, forKey: .data)
    }

    private enum CodingKeys: String, CodingKey {
        case data = "RAW"
    }
}

struct CoinDetailDecodable: Decodable {
    var type: String?
    var market: String?
    var fromsymbol: String?
    var tosymbol: String?
    var flags: String?
    var price: Double?
    var lastupdate: Double?
    var median: Double?
    var lastvolume: Double?
    var lastvolumeto: Double?
    var lasttradeid: String?
    var volumeday: Double?
    var volumedayto: Double?
    var volume24hour: Double?
    var volume24hourto: Double?
    var openday: Double?
    var highday: Double?
    var lowday: Double?
    var open24hour: Double?
    var high24hour: Double?
    var low24hour: Double?
    var lastmarket: String?
    var volumehour: Double?
    var volumehourto: Double?
    var openhour: Double?
    var highhour: Double?
    var lowhour: Double?
    var toptiervolume24hour: Double?
    var toptiervolume24hourto: Double?
    var change24hour: Double?
    var changepct24hour: Double?
    var changeday: Double?
    var changepctday: Double?
    var changehour: Double?
    var changepcthour: Double?
    var conversiontype: String?
    var conversionsymbol: String?
    var supply: Double?
    var mktcap: Double?
    var mktcappenalty: Double?
    var circulatingsupply: Double?
    var circulatingsupplymktcap: Double?
    var totalvolume24h: Double?
    var totalvolume24hto: Double?
    var totaltoptiervolume24h: Double?
    var totaltoptiervolume24hto: Double?
    var imageurl: String?

    // swiftlint:disable:next: function_body_length
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        market = try container.decodeIfPresent(String.self, forKey: .market)
        fromsymbol = try container.decodeIfPresent(String.self, forKey: .fromsymbol)
        tosymbol = try container.decodeIfPresent(String.self, forKey: .tosymbol)
        flags = try container.decodeIfPresent(String.self, forKey: .flags)
        price = try container.decodeIfPresent(Double.self, forKey: .price)
        lastupdate = try container.decodeIfPresent(Double.self, forKey: .lastupdate)
        lastvolume = try container.decodeIfPresent(Double.self, forKey: .lastvolume)
        lastvolumeto = try container.decodeIfPresent(Double.self, forKey: .lastvolumeto)
        lasttradeid = try container.decodeIfPresent(String.self, forKey: .lasttradeid)
        volumeday = try container.decodeIfPresent(Double.self, forKey: .volumeday)
        volumedayto = try container.decodeIfPresent(Double.self, forKey: .volumedayto)
        volume24hour = try container.decodeIfPresent(Double.self, forKey: .volume24hour)
        volume24hourto = try container.decodeIfPresent(Double.self, forKey: .volume24hourto)
        openday = try container.decodeIfPresent(Double.self, forKey: .openday)
        highday = try container.decodeIfPresent(Double.self, forKey: .highday)
        lowday = try container.decodeIfPresent(Double.self, forKey: .lowday)
        open24hour = try container.decodeIfPresent(Double.self, forKey: .open24hour)
        high24hour = try container.decodeIfPresent(Double.self, forKey: .high24hour)
        low24hour = try container.decodeIfPresent(Double.self, forKey: .low24hour)
        lastmarket = try container.decodeIfPresent(String.self, forKey: .lastmarket)
        volumehour = try container.decodeIfPresent(Double.self, forKey: .volumehour)
        volumehourto = try container.decodeIfPresent(Double.self, forKey: .volumehourto)
        openhour = try container.decodeIfPresent(Double.self, forKey: .openhour)
        highhour = try container.decodeIfPresent(Double.self, forKey: .highhour)
        lowhour = try container.decodeIfPresent(Double.self, forKey: .lowhour)
        toptiervolume24hour = try container.decodeIfPresent(Double.self, forKey: .toptiervolume24hour)
        toptiervolume24hourto = try container.decodeIfPresent(Double.self, forKey: .toptiervolume24hourto)
        change24hour = try container.decodeIfPresent(Double.self, forKey: .change24hour)
        changepct24hour = try container.decodeIfPresent(Double.self, forKey: .changepct24hour)
        changeday = try container.decodeIfPresent(Double.self, forKey: .changeday)
        changepctday = try container.decodeIfPresent(Double.self, forKey: .changepctday)
        changehour = try container.decodeIfPresent(Double.self, forKey: .changehour)
        changepcthour = try container.decodeIfPresent(Double.self, forKey: .changepcthour)
        conversiontype = try container.decodeIfPresent(String.self, forKey: .conversiontype)
        conversionsymbol = try container.decodeIfPresent(String.self, forKey: .conversionsymbol)
        supply = try container.decodeIfPresent(Double.self, forKey: .supply)
        mktcap = try container.decodeIfPresent(Double.self, forKey: .mktcap)
        mktcappenalty = try container.decodeIfPresent(Double.self, forKey: .mktcappenalty)
        circulatingsupply = try container.decodeIfPresent(Double.self, forKey: .circulatingsupply)
        circulatingsupplymktcap = try container.decodeIfPresent(Double.self, forKey: .circulatingsupplymktcap)
        totalvolume24h = try container.decodeIfPresent(Double.self, forKey: .totalvolume24h)
        totalvolume24hto = try container.decodeIfPresent(Double.self, forKey: .totalvolume24hto)
        totaltoptiervolume24h = try container.decodeIfPresent(Double.self, forKey: .totaltoptiervolume24h)
        totaltoptiervolume24hto = try container.decodeIfPresent(Double.self, forKey: .totaltoptiervolume24hto)
        imageurl = try container.decodeIfPresent(String.self, forKey: .imageurl)
    }
}

extension CoinDetailDecodable {
    private enum CodingKeys: String, CodingKey {
        case type = "TYPE"
        case market = "MARKET"
        case fromsymbol = "FROMSYMBOL"
        case tosymbol = "TOSYMBOL"
        case flags = "FLAGS"
        case price = "PRICE"
        case lastupdate = "LASTUPDATE"
        case median = "MEDIAN"
        case lastvolume = "LASTVOLUME"
        case lastvolumeto = "LASTVOLUMETO"
        case lasttradeid = "LASTTRADEID"
        case volumeday = "VOLUMEDAY"
        case volumedayto = "VOLUMEDAYTO"
        case volume24hour = "VOLUME24HOUR"
        case volume24hourto = "VOLUME24HOURTO"
        case openday = "OPENDAY"
        case highday = "HIGHDAY"
        case lowday = "LOWDAY"
        case open24hour = "OPEN24HOUR"
        case high24hour = "HIGH24HOUR"
        case low24hour = "LOW24HOUR"
        case lastmarket = "LASTMARKET"
        case volumehour = "VOLUMEHOUR"
        case volumehourto = "VOLUMEHOURTO"
        case openhour = "OPENHOUR"
        case highhour = "HIGHHOUR"
        case lowhour = "LOWHOUR"
        case toptiervolume24hour = "TOPTIERVOLUME24HOUR"
        case toptiervolume24hourto = "TOPTIERVOLUME24HOURTO"
        case change24hour = "CHANGE24HOUR"
        case changepct24hour = "CHANGEPCT24HOUR"
        case changeday = "CHANGEDAY"
        case changepctday = "CHANGEPCTDAY"
        case changehour = "CHANGEHOUR"
        case changepcthour = "CHANGEPCTHOUR"
        case conversiontype = "CONVERSIONTYPE"
        case conversionsymbol = "CONVERSIONSYMBOL"
        case supply = "SUPPLY"
        case mktcap = "MKTCAP"
        case mktcappenalty = "MKTCAPPENALTY"
        case circulatingsupply = "CIRCULATINGSUPPLY"
        case circulatingsupplymktcap = "CIRCULATINGSUPPLYMKTCAP"
        case totalvolume24h = "TOTALVOLUME24H"
        case totalvolume24hto = "TOTALVOLUME24HTO"
        case totaltoptiervolume24h = "TOTALTOPTIERVOLUME24H"
        case totaltoptiervolume24hto = "TOTALTOPTIERVOLUME24HTO"
        case imageurl = "IMAGEURL"
    }
}
