//
//  CoinDetailsList+View.swift
//  Cryptocompare
//
//  Created by oscar on 26/11/22.
//

import Foundation
import SKRools
import UIKit

protocol CoinDetailListView: UIView {
    func setupModel(model: [CoinDetailListModel])
}

final class DefaultCoinDetailListView: UIView, CoinDetailListView {
    private (set) var stackView: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.spacing = 5

        return stack
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
        addSubview(stackView)
        stackViewConstraints()
    }

    // MARK: - Setup Model
    func setupModel(model: [CoinDetailListModel]) {
        for item in model {
            let view: CoinDetailListItem = DefaultCoinDetailListItem()
            view.setupModel(model: item)
            stackView.addArrangedSubview(view)
        }
       // stackView.reloadInputViews()
    }
}

// MARK: - Constraints
extension DefaultCoinDetailListView {
    func stackViewConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
