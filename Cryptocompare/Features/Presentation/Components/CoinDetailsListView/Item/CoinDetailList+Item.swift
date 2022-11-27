//
//  CoinDetailList+Item.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import Foundation
import SKRools
import UIKit

protocol CoinDetailListItem: UIView {
    func setupModel(model: CoinDetailListModel)
}

final class DefaultCoinDetailListItem: UIView, CoinDetailListItem {
    private (set) var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.font = .skTitle

        return lbl
    }()

    private (set) var titleValue: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.font = .skText

        return lbl
    }()

    private (set) var line: UIView = {
        let item = UIView()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.backgroundColor = .gray

        return item
    }()

    // MARK: - View lifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        setupView()
    }

    // MARK: - Setup View
    private func setupView() {
        addSubview(titleLbl)
        addSubview(titleValue)
        addSubview(line)
        titleLblConstraints()
        titleValueConstraints()
        lineConstraints()
    }

    // MARK: - Setup Model
    func setupModel(model: CoinDetailListModel) {
        titleLbl.text = model.type.rawValue.capitalized
        titleValue.text = model.title
    }
}

// MARK: - Constraints
extension DefaultCoinDetailListItem {
    func titleLblConstraints() {
        NSLayoutConstraint.activate([
            titleLbl.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLbl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLbl.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            titleLbl.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func lineConstraints() {
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 3),
            line.leadingAnchor.constraint(equalTo: titleLbl.leadingAnchor, constant: 20),
            line.trailingAnchor.constraint(equalTo: titleValue.trailingAnchor, constant: -20),
            line.heightAnchor.constraint(equalToConstant: 1)
        ])
    }

    func titleValueConstraints() {
        NSLayoutConstraint.activate([
            titleValue.topAnchor.constraint(equalTo: topAnchor),
            titleValue.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            titleValue.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleValue.heightAnchor.constraint(equalToConstant: 21)
        ])
    }
}
