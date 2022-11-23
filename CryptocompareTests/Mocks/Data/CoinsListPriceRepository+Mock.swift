//
//  CoinsListPriceRepository+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import XCTest
import SKRools
@testable import Cryptocompare


extension CoinsListUseCaseTest {
    final class CoinsListPriceRepositorySuccessMock: CoinsListPriceRepository {
        func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping (Result<[String : CoinsListPriceDecodable], DataTransferError>) -> Void) -> Cancellable? {
            let decoder = JSONDecoder()
            let json = CoinsListPriceMock.makeJsonMock()
            if let decodable = try? decoder.decode([String : CoinsListPriceDecodable].self, from: json) {
                completion(.success(decodable))
            } else {
                XCTFail("Bad Coins Price JSON Mockup")
            }

            return nil
        }
    }

    final class CoinsLargeListPriceRepositorySuccessMock: CoinsListPriceRepository {
        func request(parameters: CoinsListPriceRepositoryParameters, completion: @escaping (Result<[String : CoinsListPriceDecodable], DataTransferError>) -> Void) -> Cancellable? {
            let decoder = JSONDecoder()
            let json = CoinsLargeListPriceJsonMock.makeJsonMock()
            if let decodable = try? decoder.decode([String : CoinsListPriceDecodable].self, from: json) {
                completion(.success(decodable))
            } else {
                XCTFail("Bad Coins Price JSON Mockup")
            }

            return nil
        }
    }
}
