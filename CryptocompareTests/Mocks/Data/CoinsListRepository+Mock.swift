//
//  CoinsListRepository+Mock.swift
//  CryptocompareTests
//
//  Created by oscar on 22/11/22.
//

import XCTest
import SKRools
@testable import Cryptocompare


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

final class CoinsLargeListRepositorySuccessMock: CoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        let decoder = JSONDecoder()
        let json = CoinsLargeListJsonMock.makeJsonMock()
        if let decodable = try? decoder.decode(CoinsListDecodable.self, from: json) {
            completion(.success(decodable))
        } else {
            XCTFail("Bad Coins JSON Mockup")
        }

        return nil
    }
}

final class CoinsListRepositoryEmptyDataSuccessMock: CoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        let decoder = JSONDecoder()
        let json = CoinsListEmptyJsonMock.makeJsonMock()
        if let decodable = try? decoder.decode(CoinsListDecodable.self, from: json) {
            completion(.success(decodable))
        } else {
            XCTFail("Bad Coins JSON Mockup")
        }

        return nil
    }
}

final class CoinsListRepository403FailureMock: CoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        completion(.failure(.accessDenied))

        return nil
    }
}

final class CoinsListRepositoryTimeOutFailureMock: CoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        completion(.failure(.timedOut))

        return nil
    }
}

final class CoinsListRepositoryNoInternetFailureMock: CoinsListRepository {
    func request(parameters: CoinsListRepositoryParameters, completion: @escaping (Result<CoinsListDecodable, DataTransferError>) -> Void) -> Cancellable? {
        completion(.failure(.notConnectedToInternet))

        return nil
    }
}

