//
//  CoinsListPriceEmpty+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import XCTest

final class CoinsListPriceEmptyMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
}
""".utf8)
    }
}

