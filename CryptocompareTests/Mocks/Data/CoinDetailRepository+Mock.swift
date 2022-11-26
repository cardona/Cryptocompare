//
//  CoinDetailRepository+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import XCTest
import SKRools
@testable import Cryptocompare


extension CoinDetailUseCaseTest {
    final class CoinDetailRepositorySuccessMock: CoinDetailRepository {
        func request(parameters: CoinDetailRepositoryParameters, completion: @escaping (Result<CoinDetailDataDecodable, DataTransferError>) -> Void) -> Cancellable? {
            let decoder = JSONDecoder()
            let json = CoinDetailsJsonMock.makeJsonMock()
            if let decodable = try? decoder.decode(CoinDetailDataDecodable.self, from: json) {
                completion(.success(decodable))
            } else {
                XCTFail("Bad Coin Detail JSON Mockup")
            }

            return nil
        }
    }
}
