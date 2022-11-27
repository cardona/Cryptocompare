//
//  SetupView+Constraints.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import UIKit

// MARK: - Constraints
extension SetupView {
    func titleLblConstraints() {
        NSLayoutConstraint.activate([
            titleLbl.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            titleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLbl.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func descriptionLblConstraints() {
        NSLayoutConstraint.activate([
            descriptionLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 20),
            descriptionLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            descriptionLbl.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

    func lottieAnimationConstraints() {
        NSLayoutConstraint.activate([
            lottieAnimation.topAnchor.constraint(equalTo: descriptionLbl.bottomAnchor, constant: 20),
            lottieAnimation.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lottieAnimation.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            lottieAnimation.bottomAnchor.constraint(equalTo: keysFieldsView.topAnchor, constant: -20)
        ])
    }

    func keysFieldsViewConstraints() {
        NSLayoutConstraint.activate([
            keysFieldsView.topAnchor.constraint(equalTo: lottieAnimation.bottomAnchor, constant: 20),
            keysFieldsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            keysFieldsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            keysFieldsView.heightAnchor.constraint(equalToConstant: 155),
            keysFieldsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
    }
}
