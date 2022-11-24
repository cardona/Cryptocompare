//
//  DownloadImage+Repository.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools

protocol DownloadImageRepository {
    @discardableResult
    func image(url: URL, completion: @escaping(Result<Data?, DataTransferError>) -> Void) -> Cancellable?
}

final class DefaultDownloadImageRepository: DownloadImageRepository {
    private let dataTransferService: DataTransferService
    private var dataTask: NetworkCancellable?

    init(dataTransferService: DataTransferService = DefaultDataTransferService()) {
        self.dataTransferService = dataTransferService
    }
}

extension DefaultDownloadImageRepository {
    func image(url: URL, completion: @escaping (Result<Data?, DataTransferError>) -> Void) -> Cancellable? {
         dataTask = dataTransferService.requestData(url: url, completion: { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        })
        return RepositoryTask(networkTask: dataTask)
    }
}
