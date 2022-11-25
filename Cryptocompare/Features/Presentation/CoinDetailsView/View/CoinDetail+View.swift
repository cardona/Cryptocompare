//
//  CoinDetail+View.swift
//  Cryptocompare
//
//  Created by oscar on 25/11/22.
//

import Foundation
import SKRools
import UIKit

final class CoinDetailView: UIViewController {
    weak var coordinator: MainCoordinator?
    var viewModel: CoinDetailsViewModel = DefaultCoinDetailsViewModel()

    private (set) var titleLbl: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skTitle
        item.textColor = .black

        return item
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
    }
}


// MARK: - Setup View
extension CoinDetailView {
    private func setupView() {
        view.backgroundColor = .skBackground

        view.addSubview(spinnerView)
        spinnerViewConstraints()
    }
}

// MARK: - Setup Binding
extension CoinDetailView {
    private func setupBinding() {
        viewModel.loadingStatus.bind { [weak self] status in
            guard let self = self else {  return }
            self.loadingSpinner(status: status)
        }

        viewModel.error.bind { [weak self] error in
            guard let error = error else { return }
            self?.errorHandling(error: error)
        }

        viewModel.model.bind { [weak self] model in
            guard let model = model else { return }
            DispatchQueue.main.async {
                // TODO: !!!

            }
        }
    }
}

// MARK: - Spinner
extension CoinDetailView {
    private func loadingSpinner(status: LoadingStatus) {
        switch status {
        case .start:
            DispatchQueue.main.async {
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
extension CoinDetailView {
    private func errorHandling(error: SKError) {
        switch error {
        case .emptyList:
            coordinator?.navigationController.popToRootViewController(animated: true)
        case .accessDenied:
            coordinator?.showAlert(message: ("Change your keys"))
        default:
            showAlert(error: error)
        }
    }
}

// MARK: - User Alerts
extension CoinDetailView {
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
