//
//  ItemListView+Protocol.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation

protocol ItemsListViewProtocol {
    /// The user wants to see more details of a specific coin
    func selected(item: ItemsListModel?, at indexPath: IndexPath)
    /// CollectionView not going through a good moment, hit rock bottom
    func hitBottom()
}
