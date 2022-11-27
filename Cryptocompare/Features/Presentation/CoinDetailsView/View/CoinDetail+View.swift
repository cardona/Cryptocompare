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
        item.font = .skBigTitle
        item.textColor = .black
        item.textAlignment = .center

        return item
    }()

    private (set) var coinDetailsList: CoinDetailListView = {
        let item = DefaultCoinDetailListView()
        item.translatesAutoresizingMaskIntoConstraints = false

        return item
    }()

    private (set) var price: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skBigPrice
        item.textColor = .green
        item.textAlignment = .center

        return item
    }()

    private (set) var buyResult: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skResult
        item.textColor = .orange
        item.textAlignment = .center
        
        return item
    }()

    private (set) var keysFieldsView: KeysFieldsView = {
        let item = DefaultKeysFieldsView()
        item.translatesAutoresizingMaskIntoConstraints = false

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
        view.addSubview(titleLbl)
        view.addSubview(coinDetailsList)
        view.addSubview(price)
        view.addSubview(buyResult)
        view.addSubview(keysFieldsView)
        view.addSubview(spinnerView)

        titleLblConstraints()
        coinDetailListConstraints()
        spinnerViewConstraints()
        priceConstraints()
        buyResultConstraints()
        keysFieldsViewConstraints()
        self.title = "Coin Details"
        addKeyboardObserver()
        keysFieldsView.delegate = self
        let keysFieldModel = KeysFieldsModel(title: "how_may_coins".localized, placeholder: "want_to_spend".localized)
        keysFieldsView.setupModel(model: keysFieldModel)
    }

    private func addKeyboardObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
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
                self?.titleLbl.text = model.symbol
                self?.price.text = model.price
                self?.coinDetailsList.setupModel(model: model.coinDetailsListModel)
            }
        }

        viewModel.result.bind(listener: { [weak self] result in
            guard let result = result else { return }
            self?.buyResult.text = result
        })
    }
}

// MARK: - User Actions
extension CoinDetailView: KeysFieldsViewProtocol {
    // User taps on calculate button
    func continueAction(model: KeysFieldsModel) {
        if let quantity = model.publicKey, !quantity.isEmpty {
            viewModel.convertCoin(quantity: quantity)
        } else {
            coordinator?.showAlert(message: "enter_api_key".localized)
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

// MARK: - Keyboard
extension CoinDetailView {
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
