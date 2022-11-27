//
//  DownloadImage+CoreData.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import CoreData
import Foundation
import SKRools
import UIKit

protocol DownloadImageCoreData {
    func save(identifier: String, data: Data)
    func load(identifier: String) -> Data?
}

final class DefaultDownloadImageCoreData: DownloadImageCoreData {
    func save(identifier: String, data: Data) {
        DispatchQueue.global(qos: .userInitiated).async {
            let privateContext = PersistentDataBaseContext.shared.persistentContainer.newBackgroundContext()
            if let coreDataImage = NSEntityDescription.insertNewObject(forEntityName: "ImageCache", into: privateContext) as? ImageCache {
                coreDataImage.identifier = identifier
                let image = UIImage(data: data)
                coreDataImage.data = image?.jpegData(compressionQuality: 1.0)
                do {
                    try? privateContext.save()
                }
            }
        }
    }

    func load(identifier: String) -> Data? {
        let context = PersistentDataBaseContext.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<ImageCache>(entityName: "ImageCache")

        fetchRequest.predicate = NSPredicate(
            format: "identifier == %@", identifier
        )
        do {
            let image = try? context.fetch(fetchRequest).first

            return image?.data
        }
    }
}
