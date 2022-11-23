//
//  UIColors+CustomColors.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import UIKit

extension UIColor {
    static var skBackground: UIColor {
        let red = 236.0 / 255.0
        let green = 236.0 / 255.0
        let blue = 236.0 / 255.0

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    static var skBorder: UIColor {
        let red = 202.0 / 255.0
        let green = 202.0 / 255.0
        let blue = 202.0 / 255.0

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    static var skButton: UIColor {
        let red = 1.0 / 255.0
        let green = 94.0 / 255.0
        let blue = 255.0 / 255.0

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
