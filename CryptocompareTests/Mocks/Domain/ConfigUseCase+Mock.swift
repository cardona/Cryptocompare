//
//  ConfigUseCase+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 24/11/22.
//

import Foundation

import XCTest
import SKRools
@testable import Cryptocompare

final class ConfigUseCaseSuccessMock: ConfigUseCase {
    func setupSecureEnclave() {
        // Nothing to do
    }

    func baseURL() throws -> String {
        return "FAKE"
    }

    func baseURL(text: String) throws {
        // Nothing to do
    }

    func apiKey() throws -> String {
        return "FAKE"
    }

    func apiKey(text: String) throws {
        // Nothing to do
    }
}
