//
//  UIFont+CustomFonts.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import UIKit

extension UIFont {
    static var skTitle: UIFont {
        return UIFont(name: Resources.titleFont, size: 14) ?? .systemFont(ofSize: 14)
    }

    static var skText: UIFont {
        return UIFont(name: Resources.textFont, size: 12) ?? .systemFont(ofSize: 12)
    }

    static var skPrice: UIFont {
        return UIFont(name: Resources.priceFont, size: 13) ?? .systemFont(ofSize: 13)
    }

    private enum Resources {
        static let defaultImage = "photo.fill"
        static let pageImage = "magazine"
        static let titleFont = "MuktaMahee-Bold"
        static let textFont = "MuktaMahee-Regular"
        static let priceFont = "MuktaMahee-Bold"
    }
}
