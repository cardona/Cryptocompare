//
//  Keychain+UseCase.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools

private enum KeychainConstants: String, CaseIterable {
    case tokenKey
}

protocol KeychainUseCase {
    func apiKey(data: Data)
    func apiKey() -> Data?
    func deleteAllStoredObjects()
}

final class DefaultKeychainUseCase: KeychainUseCase {
    private let keychain: SKKeychain?

    init(keychain: SKKeychain = DefaultSKKeychain()) {
        self.keychain = keychain
    }

    func apiKey(data: Data) {
        store(data: data, key: KeychainConstants.tokenKey)
    }

    func apiKey() -> Data? {
        return retriveData(key: KeychainConstants.tokenKey)
    }

    func deleteAllStoredObjects() {
        let allItems: [String] = KeychainConstants.allCases.map { $0.rawValue }
        keychain?.delete(items: allItems)
    }
}

private extension DefaultKeychainUseCase {
    private func store(data: Data, key: KeychainConstants) {
        if AntiDebugging.shared.isDebuggerActive() {
            // TODO: Show an AntiDebug alert
            return
        }
        do {
            try keychain?.save(data, forKey: key.rawValue)
        } catch {
            // TODO: Error Handling
        }
    }

    private func retriveData(key: KeychainConstants) -> Data? {
        if AntiDebugging.shared.isDebuggerActive() {
            // TODO: Show an AntiDebug alert
            return nil
        }
        do {
            return try keychain?.loadData(withKey: key.rawValue)
        } catch {
            // TODO: Error Handling
        }
        return nil
    }

    private func removeData(keys: [String]) {
       keychain?.delete(items: keys)
    }
}
