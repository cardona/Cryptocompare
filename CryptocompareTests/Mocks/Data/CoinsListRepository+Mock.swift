//
//  CoinsListRepository+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import XCTest
import SKRools
@testable import Cryptocompare


extension CoinsListUseCaseTest {
    final class CoinsListRepositorySuccessMock: CoinsListRepository {
        func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
            let decoder = JSONDecoder()
            let json = CoinsListJsonMock.makeJsonMock()
            if let decodable = try? decoder.decode(CoinsListDecodable.self, from: json) {
                completion(.success(decodable))
            } else {
                XCTFail("Bad Coins JSON Mockup")
            }

            return nil
        }
    }
}
