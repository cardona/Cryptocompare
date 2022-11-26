//
//  CoinsListPrice+CoreData.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import CoreData
import Foundation
import SKRools

protocol CoinsListPriceCoreData {
    func save(entity: [CoinEntity])
    func load(symbols: [String]) -> [CoinEntity]?
}

final class DefaultCoinsListPriceCoreData: CoinsListPriceCoreData {
    func save(entity: [CoinEntity]) {
        DispatchQueue.global(qos: .userInitiated).async {
            for item in entity {
                let privateContext = PersistentDataBaseContext.shared.persistentContainer.viewContext
                if let coin = NSEntityDescription.insertNewObject(forEntityName: "CoinPriceCoreData", into: privateContext) as? CoinPriceCoreData {
                    if let price = item.price {
                        coin.price = price
                    }
                    coin.identifier = item.identifier
                    coin.symbol = item.symbol
                    coin.fullName = item.fullName
                    coin.imageUrl = item.imageUrl
                    print("STORED: \(coin.symbol)")
                    try? privateContext.save()
                }
            }
        }
    }

    func load(symbols: [String]) -> [CoinEntity]? {
        let context = PersistentDataBaseContext.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CoinPriceCoreData>(entityName: "CoinPriceCoreData")
        var predicates: [NSPredicate] = []

        for symbol in symbols {
            let predicate = NSPredicate(
                format: "symbol == %@", symbol
            )
            predicates.append(predicate)
        }

        if predicates.isEmpty {
            return nil
        } else {
            let predicateCompound = NSCompoundPredicate(type: .or, subpredicates: predicates)
            fetchRequest.predicate = predicateCompound

            let data = try? context.fetch(fetchRequest)
            let entity = data?.map { CoinEntity(coreData: $0) }

            return entity
        }
    }
}
