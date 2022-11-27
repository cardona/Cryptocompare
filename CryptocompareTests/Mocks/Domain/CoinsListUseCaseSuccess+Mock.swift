//
//  CoinsListUseCaseSuccess+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 27/11/22.
//

import XCTest
import SKRools
@testable import Cryptocompare

final class CoinsListUseCaseSuccessMock: CoinsListUseCase {
    func execute(parameters: CoinsListUseCaseParameters, completion: @escaping CompletionBlock) {

        let decoder = JSONDecoder()
        let json = CoinsLargeListJsonMock.makeJsonMock()
        if let decodable = try? decoder.decode(CoinsListDecodable.self, from: json) {
            let entity = decodable.data!.map { CoinEntity(decodable: $0.value) }
            completion(.success(entity))
        } else {
            XCTFail("Bad Coins JSON Mockup")
            completion(.failure(.parsing))
        }
    }
}
