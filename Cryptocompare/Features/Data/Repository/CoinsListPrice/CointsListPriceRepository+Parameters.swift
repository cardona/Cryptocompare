//
//  CointsListPriceRepository+Parameters.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

struct CoinsListPriceRepositoryParameters {
    /// Comma separated cryptocurrency symbols list [ Min length - 1] [ Max length - 300]
    var fsyms: [String]?
    /// Comma separated cryptocurrency symbols list to convert into [ Min length - 1] [ Max length - 100]
    var tsyms: [String]?
}
