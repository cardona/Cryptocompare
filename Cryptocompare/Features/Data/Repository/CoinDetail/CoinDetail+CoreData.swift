//
//  CoinDetail+CoreData.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import CoreData
import Foundation
import SKRools
import UIKit

protocol CoinDetailCoreData {
    func save(identifier: String, entity: CoinDetailsEntity)
    func load(symbol: String) -> CoinDetailsEntity?
}

final class DefaultCoinDetailCoreData: CoinDetailCoreData {
    func save(identifier: String, entity: CoinDetailsEntity) {
        DispatchQueue.global(qos: .userInitiated).async {
            let privateContext = PersistentDataBaseContext.shared.persistentContainer.newBackgroundContext()
            if let item = NSEntityDescription.insertNewObject(forEntityName: "CoinDetailsCoreData", into: privateContext) as? CoinDetailsCoreData {
                if let price = entity.price {
                    item.price = price
                }
                if let low24Hour = entity.low24Hour {
                    item.low24Hour = low24Hour
                }
                if let open24Hour = entity.open24Hour {
                    item.open24Hour = open24Hour
                }
                if let high24Hour = entity.high24Hour {
                    item.high24Hour = high24Hour
                }
                if let highDay = entity.highDay {
                    item.highDay = highDay
                }
                if let openDay = entity.openDay {
                    item.openDay = openDay
                }
                item.symbol = entity.symbol

                do {
                    try? privateContext.save()
                }
            }
        }
    }

    func load(symbol: String) -> CoinDetailsEntity? {
        let context = PersistentDataBaseContext.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CoinDetailsCoreData>(entityName: "CoinDetailsCoreData")

        fetchRequest.predicate = NSPredicate(
            format: "symbol == %@", symbol
        )
        do {
            if let item = try? context.fetch(fetchRequest).first {
                return CoinDetailsEntity(coreData: item)
            } else {
                return nil
            }
        }
    }
}
