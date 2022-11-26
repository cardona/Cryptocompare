//
//  KeysFields+Constraints.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import UIKit

extension DefaultKeysFieldsView {
    func publicKeyLblConstraints() {
        NSLayoutConstraint.activate([
            publicKeyLbl.topAnchor.constraint(greaterThanOrEqualTo: topAnchor, constant: 20),
            publicKeyLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            publicKeyLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            publicKeyLbl.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func publicKeyTxtConstraints() {
        NSLayoutConstraint.activate([
            publicKeyTxt.topAnchor.constraint(equalTo: publicKeyLbl.bottomAnchor, constant: 5),
            publicKeyTxt.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            publicKeyTxt.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            publicKeyTxt.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func continueBtnConstraints() {
        NSLayoutConstraint.activate([
            continueBtn.topAnchor.constraint(equalTo: publicKeyTxt.bottomAnchor, constant: 20),
            continueBtn.leadingAnchor.constraint(equalTo: publicKeyTxt.leadingAnchor, constant: 20),
            continueBtn.trailingAnchor.constraint(equalTo: publicKeyTxt.trailingAnchor, constant: -20),
            continueBtn.heightAnchor.constraint(equalToConstant: 44),
            continueBtn.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
