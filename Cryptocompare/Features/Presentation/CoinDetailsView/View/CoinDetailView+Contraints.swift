//
//  CoinDetailView+Contraints.swift
//  Cryptocompare
//
//  Created by oscar on 25/11/22.
//

import Foundation
import UIKit

// MARK: - Constraints
extension CoinDetailView {
    func titleLblConstraints() {
        NSLayoutConstraint.activate([
            titleLbl.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            titleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLbl.heightAnchor.constraint(equalToConstant: 32)
        ])
    }

    func priceConstraints() {
        NSLayoutConstraint.activate([
            price.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 20),
            price.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            price.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            price.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

    func coinDetailListConstraints() {
        NSLayoutConstraint.activate([
            coinDetailsList.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 20),
            coinDetailsList.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            coinDetailsList.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            coinDetailsList.heightAnchor.constraint(equalToConstant: 145)
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
