//
//  CoinDetailRepository+Parameters.swift
//  Cryptocompare
//
//  Created by oscar on 23/11/22.
//

import Foundation

struct CoinDetailRepositoryParameters {
    /// Comma separated cryptocurrency symbols list [ Min length - 1] [ Max length - 300]
    var symbol: [String]?
    /// Comma separated cryptocurrency symbols list to convert into [ Min length - 1] [ Max length - 100]
    var currency: [String]?
    
}
