//
//  PersistentDataBase+Context.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import CoreData
import Foundation
import SKRools

public final class PersistentDataBaseContext {
    public static let shared = PersistentDataBaseContext()

    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Cryptocompare")
        container.loadPersistentStores(completionHandler: { storeDescription, error in
            if let error = error as NSError? {
                SKLogger.shared.log(msg: "Core Data Error: \(storeDescription) - \(error), \(error.userInfo)", group: .database, severity: .error)
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                SKLogger.shared.log(msg: "Core Data Error: \(nserror.localizedDescription)", group: .database, severity: .error)
            }
        }
    }

    func delete(entity: String) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
        fetchRequest.returnsObjectsAsFaults = false
        do {
            let results = try persistentContainer.viewContext.fetch(fetchRequest)
            for object in results {
                guard let objectData = object as? NSManagedObject else {continue}
                persistentContainer.viewContext.delete(objectData)
                SKLogger.shared.log(msg: "Deleted Entity: \(entity)", group: .database, severity: .info)
            }
        } catch {
            let nserror = error as NSError
            SKLogger.shared.log(msg: "Error Deleting Entity: \(entity) with error: \(nserror.localizedDescription)", group: .database, severity: .error)
        }
    }

    func destroy(completion: @escaping (Error?) -> Void) {
        let context = persistentContainer.viewContext
        let fetchRequestCoin: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "CoinCoreData")
        let fetchRequestCoinPrice: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "CoinPriceCoreData")
        let fetchRequestCoinDetails: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "CoinDetailsCoreData")

        let deleteRequestCoin = NSBatchDeleteRequest(fetchRequest: fetchRequestCoin)
        let deleteRequestCoinPrice = NSBatchDeleteRequest(fetchRequest: fetchRequestCoinPrice)
        let deleteRequestCoinDetails = NSBatchDeleteRequest(fetchRequest: fetchRequestCoinDetails)

        do {
            try persistentContainer.persistentStoreCoordinator.execute(deleteRequestCoin, with: context)
            try persistentContainer.persistentStoreCoordinator.execute(deleteRequestCoinPrice, with: context)
            try persistentContainer.persistentStoreCoordinator.execute(deleteRequestCoinDetails, with: context)
        } catch let error as NSError {
            SKLogger.shared.log(msg: "Error Destoying DB with error: \(error.localizedDescription)", group: .database, severity: .error)
        }
    }
}
