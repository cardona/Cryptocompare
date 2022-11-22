//
//  CoinsList+UseCase.swift
//  Cryptocompare
//
//  Created by oscar on 22/11/22.
//

import Foundation
import SKRools

protocol CoinsListUseCase {
    func execute(completion: @escaping (Result<[CoinEntity], SKError>) -> Void)
}

final class DefaultCoinsListUseCase: CoinsListUseCase {
    private var repository: CoinsListRepository?
    private var allCoins: [CoinEntity]?

    init(repository: CoinsListRepository = DefaultCoinsListRepository()) {
        self.repository = repository
    }

    func execute(completion: @escaping (Result<[CoinEntity], SKError>) -> Void) {

    }
}
