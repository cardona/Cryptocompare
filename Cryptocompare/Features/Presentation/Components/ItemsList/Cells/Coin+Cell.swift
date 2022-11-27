//
//  Coin+Cell.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

final class CoinCell: UICollectionViewCell {
    static let identifier = "CoinCellID"
    var dataTask: Cancellable?

    private var containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 6

        return containerView
    }()

    var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .white
        image.image = UIImage(named: Resources.defaultImage)

        return image
    }()

    let title: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.font = .skTitle

        return lbl
    }()

    let symbol: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.font = .skText

        return lbl
    }()

    let price: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .black
        lbl.textAlignment = .right
        lbl.font = .skPrice

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
        dataTask?.cancel()
        dataTask = nil
        title.text = ""
        imageView.image = nil
        symbol.text = ""
        price.text = ""
    }

    func commonInit() {
        contentView.addSubview(containerView)
        containerView.addSubview(imageView)
        containerView.addSubview(symbol)
        containerView.addSubview(title)
        containerView.addSubview(price)
        containerViewConstraints()
        imageViewConstraints()
        titleConstraints()
        symbolConstraints()
        priceConstraints()
        contentView.layer.cornerRadius = 8.0
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.gray.cgColor
        contentView.layer.masksToBounds = true
    }

    func setupCell(model: ItemsListModel) {
        DispatchQueue.main.async {
            self.title.text = model.title
            self.symbol.text = model.subtitle
            self.price.text = model.bottomRightText
            self.setupShadow()
        }
    }

    private func setupShadow() {
        DispatchQueue.main.async {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
            self.layer.shadowRadius = 1.0
            self.layer.shadowOpacity = 0.1
            self.layer.masksToBounds = false
            self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
}

// MARK: - Constraiints
extension CoinCell {
    func containerViewConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    func imageViewConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 15),
            imageView.widthAnchor.constraint(equalToConstant: 90),
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -15)
        ])
    }

    func titleConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 0),
            title.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            title.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func symbolConstraints() {
        NSLayoutConstraint.activate([
            symbol.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            symbol.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            symbol.trailingAnchor.constraint(equalTo: price.leadingAnchor, constant: -20),
            symbol.heightAnchor.constraint(equalToConstant: 21)
        ])
    }

    func priceConstraints() {
        NSLayoutConstraint.activate([
            price.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            price.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            price.heightAnchor.constraint(equalToConstant: 21),
            price.widthAnchor.constraint(equalToConstant: 90)
        ])
    }

    private enum Resources {
        static let defaultImage = "photo.fill"
        static let pageImage = "magazine"
    }
}
