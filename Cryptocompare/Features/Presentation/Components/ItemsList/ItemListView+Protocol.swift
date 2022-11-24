//
//  ItemListView+Protocol.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation

protocol ItemsListViewProtocol {
    func selected(item: ItemsListModel?, at indexPath: IndexPath)
}
