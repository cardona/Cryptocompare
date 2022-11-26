//
//  UICollectionViewCell+DownloadImage.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

extension UICollectionViewCell {
    @discardableResult
    func image(url: URL, cache: NSCache<NSString, NSData>?, completion: @escaping (Result<Data, SKError>) -> Void) -> Cancellable? {
        let repository: DownloadImageRepository = DefaultDownloadImageRepository()

        if let cachedImage = cache?.object(forKey: url.absoluteString as NSString) as Data? {
            completion(.success(cachedImage))
            return nil
        } else {
            let dataTask = repository.image(url: url, completion: { result in
                switch result {
                case .success(let data):
                    if let data = data,
                       !data.isEmpty {
                        cache?.setObject(data as NSData, forKey: url.absoluteString as NSString)
                        completion(.success(data))
                    } else {
                        completion(.failure(SKError.parseError(msg: "No data")))
                    }
                case .failure(let error):
                    completion(.failure(error.skError))
                }
            })
            return dataTask
        }
    }
}
