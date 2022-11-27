//
//  String+Localized.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
