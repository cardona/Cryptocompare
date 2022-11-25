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
            titleLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLbl.heightAnchor.constraint(equalToConstant: 45)
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
