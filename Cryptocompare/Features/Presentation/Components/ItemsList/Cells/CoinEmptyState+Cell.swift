//
//  CoinEmptyState+Cell.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

final class CoinEmptyStateCell: UICollectionViewCell {
    static let identifier = "CoinEmptyStateCellID"

    private var containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 6

        return containerView
    }()

    var imageViewLeft: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: Resources.left)

        return image
    }()

    var imageViewRight: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: Resources.right)

        return image
    }()

    let title: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.font = .skTitle

        return lbl
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    func commonInit() {
        contentView.addSubview(containerView)
        containerView.addSubview(imageViewLeft)
        containerView.addSubview(imageViewRight)
        containerView.addSubview(title)
        containerViewConstraints()
        imageViewLeftConstraints()
        imageViewRightConstraints()
        titleConstraints()
        title.text = Resources.emptyStateText.localized
    }
}

// MARK: - Constraiints
extension CoinEmptyStateCell {
    func containerViewConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    func imageViewLeftConstraints() {
        NSLayoutConstraint.activate([
            imageViewLeft.trailingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -20),
            imageViewLeft.widthAnchor.constraint(equalToConstant: 128),
            imageViewLeft.heightAnchor.constraint(equalToConstant: 128),
            imageViewLeft.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
    }

    func imageViewRightConstraints() {
        NSLayoutConstraint.activate([
            imageViewRight.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 20),
            imageViewRight.widthAnchor.constraint(equalToConstant: 128),
            imageViewRight.heightAnchor.constraint(equalToConstant: 128),
            imageViewRight.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
    }

    func titleConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            title.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            title.heightAnchor.constraint(greaterThanOrEqualToConstant: 21)
        ])
    }
}

extension CoinEmptyStateCell {
    private enum Resources {
        static let cloud = "cloud.bolt.rain"
        static let left = "camping-left"
        static let right = "camping-right"
        static let emptyStateText = "emptyState"
    }
}
