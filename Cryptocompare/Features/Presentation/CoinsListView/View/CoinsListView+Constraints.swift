//
//  CoinsListView+Constraints.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import UIKit

// MARK: - Constraints
extension CoinsListView {
    func itemsListConstraints() {
        NSLayoutConstraint.activate([
            itemsList.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            itemsList.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            itemsList.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            itemsList.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }

    func spinnerViewConstraints() {
        NSLayoutConstraint.activate([
            spinnerView.topAnchor.constraint(equalTo: view.topAnchor),
            spinnerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            spinnerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            spinnerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
