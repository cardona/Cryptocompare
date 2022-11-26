//
//  ItemsListView+Constraints.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import UIKit

extension DefaultItemsListView {
    func collectionViewConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
