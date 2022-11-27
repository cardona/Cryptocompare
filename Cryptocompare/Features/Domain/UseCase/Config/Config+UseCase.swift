//
//  Config+UseCase.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools

// MARK: ConfigUseCase
protocol ConfigUseCase {
    func setupSecureEnclave()
    func apiKey() throws -> String
    func apiKey(text: String) throws
    func baseURL() throws -> String
    func baseURL(text: String) throws
}

// MARK: - Init
final class DefaultConfigUseCase: ConfigUseCase {
    private let keychain: KeychainUseCase?
    private let crypto: SKCrypto?

    init(keychain: KeychainUseCase = DefaultKeychainUseCase(),
         crypto: SKCrypto = DefaultSKCrypto()) {
        self.keychain = keychain
        self.crypto = crypto
    }

    func setupSecureEnclave() {
        guard
            let keychain = keychain,
            let crypto = crypto
        else {
            SKLogger.shared.log(msg: "Setup Config create useCase", group: .configuration, severity: .info)
            return
        }
        SKLogger.shared.log(msg: "Setup Crypto", group: .configuration, severity: .info)
        keychain.deleteAllStoredObjects()
        do {
            try crypto.createPrivateKey()
        } catch {
            SKLogger.shared.log(msg: error.localizedDescription, group: .secureEnclave, severity: .error)
        }
    }
}

// MARK: - Stored Keys - Client

extension DefaultConfigUseCase {
    func apiKey() throws -> String {
        guard
            let key = try crypto?.symmetricKey(),
            let data = keychain?.apiKey(),
            let text = try? crypto?.decrypt(data: data, key: key) as? String
        else {
            throw KeychainError.retrievingSavedData(msg: "apiKey")
        }
        return text
    }

    func apiKey(text: String) throws {
        guard
            let key = try crypto?.symmetricKey(),
            let encrypted = try crypto?.encrypt(text: text, key: key)
        else {
            throw KeychainError.storeData(msg: "apiKey")
        }
        keychain?.apiKey(data: encrypted)
    }

    func baseURL() throws -> String {
        guard
            let key = try crypto?.symmetricKey(),
            let data = keychain?.baseURL(),
            let text = try? crypto?.decrypt(data: data, key: key) as? String
        else {
            throw KeychainError.retrievingSavedData(msg: "baseURL")
        }
        return text
    }

    func baseURL(text: String) throws {
        guard
            let key = try crypto?.symmetricKey(),
            let encrypted = try crypto?.encrypt(text: text, key: key)
        else {
            throw KeychainError.storeData(msg: "baseURL")
        }
        keychain?.baseURL(data: encrypted)
    }
}
