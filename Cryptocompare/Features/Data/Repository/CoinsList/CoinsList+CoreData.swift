//
//  CoinsList+CoreData.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import CoreData
import Foundation
import SKRools

protocol CoinsListCoreData {
    func save(entity: [CoinEntity])
    func load() -> [CoinEntity]?
    func delete(delete entity: [CoinEntity])
}

final class DefaultCoinsListCoreData: CoinsListCoreData {
    func save(entity: [CoinEntity]) {
        DispatchQueue.global(qos: .userInitiated).async {
            for item in entity {
                let privateContext = PersistentDataBaseContext.shared.persistentContainer.viewContext
                if let coin = NSEntityDescription.insertNewObject(forEntityName: "CoinCoreData", into: privateContext) as? CoinCoreData {
                    coin.identifier = item.identifier
                    coin.symbol = item.symbol
                    coin.fullName = item.fullName
                    coin.imageUrl = item.imageUrl
                    do {
                        try? privateContext.save()
                    }
                }
            }
        }
    }

    func load() -> [CoinEntity]? {
        let context = PersistentDataBaseContext.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CoinCoreData>(entityName: "CoinCoreData")
        do {
            let data = try? context.fetch(fetchRequest)
            let entity = data?.map { CoinEntity(coreData: $0) }
            SKLogger.shared.log(msg: "Coins without price: \(entity?.count ?? 0)", group: .database, severity: .info)

            return entity
        }
    }

    func delete(delete entity: [CoinEntity]) {
        DispatchQueue.global(qos: .userInitiated).async {
            let context = PersistentDataBaseContext.shared.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<CoinCoreData>(entityName: "CoinCoreData")
            var predicates: [NSPredicate] = []

            for item in entity {
                if let symbol = item.symbol {
                    let predicate = NSPredicate(
                        format: "symbol == %@", symbol
                    )
                    predicates.append(predicate)
                }
            }

            if !predicates.isEmpty {
                let predicateCompound = NSCompoundPredicate(type: .or, subpredicates: predicates)
                fetchRequest.predicate = predicateCompound
                do {
                    if let data = try? context.fetch(fetchRequest) {
                        for obj in data {
                            context.delete(obj)
                        }
                        try? context.save()
                    }
                }
            }
        }
    }
}
