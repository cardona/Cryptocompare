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

        view.addSubview(spinnerView)
        spinnerViewConstraints()
    }
}

// MARK: - Setup Binding
extension CoinsListView {
    private func setupBinding() {
        viewModel.loadingStatus.bind { [weak self] status in
            guard let self = self else {  return }
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

        viewModel.error.bind { [weak self] error in
            guard let error = error else { return }
            SKLogger.shared.log(error: error, endpoint: nil, data: nil, group: .filesystem)
            switch error {
            case .emptyList:
                DispatchQueue.main.async {
                    self?.itemsList.showEmptyState()
                }
            case .accessDenied:
                self?.coordinator?.showAlert(message: ("Change your keys"))
            default:
                self?.showAlert(error: error)
            }
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
    private func itemsListSelected(item: ItemsListModel?, at indexPath: IndexPath) {
        SKLogger.shared.log(msg: "Selected: \(item?.title ?? "")", group: .debug, severity: .info)
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
    func selected(item: ItemsListModel?, at indexPath: IndexPath) {
        itemsListSelected(item: item, at: indexPath)
    }
}
