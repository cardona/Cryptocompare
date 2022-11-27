//
//  ItemsList+View.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

protocol ItemsListView: UIView {
    var delegate: ItemsListViewProtocol? { get set }
    func setupModel(model: [ItemsListModel], cache: NSCache<NSString, NSData>?)
    func showEmptyState()
    func endRefresh()
}

final class DefaultItemsListView: UIView, ItemsListView {
    var delegate: ItemsListViewProtocol?
    private var itemsListModel: [ItemsListModel]?
    private weak var imagesCache: NSCache<NSString, NSData>?
    private let refreshControl = UIRefreshControl()

    private (set) var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false

        return collectionView
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
        addSubview(collectionView)
        collectionViewConstraints()
        collectionView.register(CoinCell.self, forCellWithReuseIdentifier: CoinCell.identifier)
        collectionView.register(CoinEmptyStateCell.self, forCellWithReuseIdentifier: CoinEmptyStateCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        backgroundColor = .skBackground
        collectionView.backgroundColor = .skBackground
        refreshControl.tintColor = .gray
        refreshControl.addTarget(self, action: #selector(pullToRefresh), for: .valueChanged)
        collectionView.addSubview(refreshControl)
        collectionView.alwaysBounceVertical = true
    }

    private func collectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = cellSize()
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 0, left: Margins.cellLeft, bottom: 0, right: Margins.cellRight)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20

        return layout
    }

    private func cellSize() -> CGSize {
        return CGSize(width: frame.width - (Margins.cellLeft + Margins.cellRight), height: 120)
    }

    private func emptyCellSize() -> CGSize {
        return CGSize(width: frame.width - (Margins.cellLeft + Margins.cellRight), height: frame.height - layoutMargins.bottom)
    }

    // MARK: - Setup Model
    func setupModel(model: [ItemsListModel], cache: NSCache<NSString, NSData>?) {
        imagesCache = cache
        itemsListModel = model

        collectionView.collectionViewLayout = collectionViewLayout()
        collectionView.reloadData()    }

    func showEmptyState() {
//        if itemsListModel?.count == nil {
            itemsListModel = [ItemsListModel(isEmptyStateCell: true)]
            collectionView.reloadData()
//        }
    }

    @objc private func pullToRefresh() {
        delegate?.refresh()
    }

    func endRefresh() {
        refreshControl.endRefreshing()
    }
}

// MARK: - UICollectionViewDelegate
extension DefaultItemsListView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let item = itemsListModel?[indexPath.row] {
            delegate?.selected(item: item, at: indexPath)
        }
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
         if let itemCount = itemsListModel?.count, (indexPath.row == itemCount - 1 ), collectionView.numberOfItems(inSection: 0) > 1 {
             delegate?.hitBottom()
         }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension DefaultItemsListView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let data = itemsListModel?[indexPath.row], !data.isEmptyStateCell {
            return cellSize()
        } else {
            return emptyCellSize()
        }
    }
}

// MARK: - UICollectionViewDataSource
extension DefaultItemsListView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsListModel?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let data = itemsListModel?[indexPath.row] else { return CoinEmptyStateCell() }
        if data.isEmptyStateCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CoinEmptyStateCell.identifier, for: indexPath)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CoinCell.identifier, for: indexPath)
            if let coinCell = cell as? CoinCell, let url = data.imageUrl {
                let dataTask = coinCell.image(url: url, cache: imagesCache, completion: { result in
                    switch result {
                    case .success(let data):
                        DispatchQueue.main.async {
                            coinCell.imageView.image = UIImage(data: data)
                        }
                    case .failure:
                        break
                    }
                })
                coinCell.setupCell(model: data)
                coinCell.dataTask = dataTask

                return coinCell
            } else {
                return CoinCell()
            }
        }
    }
}

// MARK: - Constants
private extension DefaultItemsListView {
    enum Margins {
        static let cellLeft: CGFloat = 20
        static let cellRight: CGFloat = 20
    }
}
