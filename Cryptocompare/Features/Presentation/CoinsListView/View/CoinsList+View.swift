//
//  CoinsList+View.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

final class CoinsListView: UIViewController {
    weak var coordinator: MainCoordinator?
    private var viewModel: CoinsListViewModel = DefaultCoinsListViewModel()

    private (set) var itemsList: ItemsListView = {
        let list = DefaultItemsListView()
        list.translatesAutoresizingMaskIntoConstraints = false

        return list
    }()

    private (set) var spinnerView: SKSpinnerView = {
        let spinner = SKSpinnerView()
        spinner.translatesAutoresizingMaskIntoConstraints = false

        return spinner
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBinding()
        viewModel.viewDidLoad()
    }
}

// MARK: - Setup View
extension CoinsListView {
    private func setupView() {
        view.backgroundColor = .skBackground

        view.addSubview(itemsList)
        itemsListConstraints()
        itemsList.delegate = self
        itemsList.showEmptyState()

        view.addSubview(spinnerView)
        spinnerViewConstraints()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.title = "Coins List"
    }
}

// MARK: - Setup Binding
extension CoinsListView {
    private func setupBinding() {
        viewModel.loadingStatus.bind { [weak self] status in
            guard let self = self else {  return }
            self.loadingSpinner(status: status)
        }

        viewModel.error.bind { [weak self] error in
            guard let error = error else { return }
            self?.errorHandling(error: error)
        }

        viewModel.itemsListModel.bind { [weak self] model in
            guard let model = model else { return }
            DispatchQueue.main.async {
                self?.itemsList.setupModel(model: model.coins, cache: self?.coordinator?.imagesCache)
            }
        }
    }
}

// MARK: - User Actions
extension CoinsListView {
    /// The user wants to see more details of a specific coin
    private func itemsListSelected(item: ItemsListModel?, at indexPath: IndexPath) {
        if let symbol = item?.identifier {
            coordinator?.pushCoinDetailView(symbol: symbol)
        }
    }

    /// The user reaches the end of the coins list and needs more data
    private func coinsListHitBottom() {
        viewModel.coinsList(force: false)
    }
}

// MARK: - Spinner
extension CoinsListView {
    private func loadingSpinner(status: LoadingStatus) {
        switch status {
        case .start:
            DispatchQueue.main.async {
                self.itemsList.showEmptyState()
                self.spinnerView.isHidden = false
            }
        case .stop:
            DispatchQueue.main.async {
                self.spinnerView.isHidden = true
            }
        }
    }
}

// MARK: - Error Handling
extension CoinsListView {
    private func errorHandling(error: SKError) {
        switch error {
        case .emptyList, .emptyData:
            DispatchQueue.main.async {
                self.itemsList.showEmptyState()
            }
        case .accessDenied:
            coordinator?.showAlert(message: ("Change your keys"))
        default:
            showAlert(error: error)
        }
    }
}

// MARK: - User Alerts
extension CoinsListView {
    private func showAlert(error: SKError) {
        var defaultMessage: String?
        switch error {
        case .accessDenied:
            defaultMessage = "access_denied_key".localized
        case .internalServerError:
            defaultMessage = "try_again_key".localized
        default:
            defaultMessage = "unknow_error_key".localized
        }
        coordinator?.showAlert(message: defaultMessage)
    }
}

// MARK: - ItemsList
extension CoinsListView: ItemsListViewProtocol {
    func hitBottom() {
        coinsListHitBottom()
    }

    func selected(item: ItemsListModel?, at indexPath: IndexPath) {
        itemsListSelected(item: item, at: indexPath)
    }

    func refresh() {
        SKLogger.shared.log(msg: "Pull", group: .database, severity: .info)
        viewModel.deleteCache()
        itemsList.endRefresh()
    }
}
