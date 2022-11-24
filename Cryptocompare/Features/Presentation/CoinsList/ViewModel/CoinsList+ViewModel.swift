//
//  CoinsList+ViewModel.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import Foundation
import SKRools

protocol CoinsListViewModel: CoinsListViewModelInput, CoinsListViewModelOutput {}

// MARK: - CoinsListViewModelInput Protocol

/// Here define all the methods that the view use
/// to notify the user's actions or if the view needs data.
///
/// The viewModel applies the logic and, if necessary updates
/// any of the binded variables with the view so that it displays
/// the data or an error.
///
/// Only methods, they can contain parameters but don't use closures and variables.
protocol CoinsListViewModelInput {
    /// This method is called when the view is loaded but not presented
    func viewDidLoad()
    func coinDetail(symbol: String)
}

// MARK: - CoinsListViewModelOutput Protocol

/// Here you define all the binding variables you need to update the view.
/// For example loadingStatus and error.
///
/// When the content of the variable changes, the view is notified and
/// the view must act accordingly.
/// Only binding and read-only variables, do not use methods or closures
protocol CoinsListViewModelOutput {
    var loadingStatus: Box<LoadingStatus> { get }
    var error: Box<SKError?> { get }
    var itemsListModel: Box<CoinsListModel?> { get }
}

// MARK: - DefaultCoinsListViewModel
final class DefaultCoinsListViewModel: CoinsListViewModel {
    var loadingStatus: Box<LoadingStatus> = Box(.stop)
    var error: Box<SKError?> = Box(nil)
    var itemsListModel: Box<CoinsListModel?> = Box(nil)
    private var useCase: CoinsListUseCase?

    init (useCase: CoinsListUseCase = DefaultCoinsListUseCase()) {
        self.useCase = useCase
    }

    func viewDidLoad() {
        loadingStatus.value = .start
        let params = CoinsListUseCaseParameters(total: 20, outputSymbol: .eur)
        useCase?.execute(parameters: params, completion: { [weak self] result in
            switch result {
            case .success(let entity):
//                let items = entity.compactMap { item in
//                    if let identifier = item.identifier,
//                       let name = item.fullName,
//                       let imageUrl = item.imageUrl,
//                       let url = URL(string: imageUrl),
//                       let symbol = item.symbol,
//                       let price = item.price,
//                       price > 0.000001 {
//                        return CoinModel(identifier: identifier, name: name, logo: url, symbol: symbol, price: String(price))
//                    }
//                    return nil
//                }
                //TODO: Move to func
                let items = entity.compactMap { item in
                    if let identifier = item.identifier,
                       let name = item.fullName,
                       let imageUrl = item.imageUrl,
                       let url = URL(string: imageUrl),
                       let symbol = item.symbol,
                       let price = item.price {
                        // TODO: Remove symbol from name
                        return ItemsListModel(identifier: identifier, title: name, subtitle: symbol, imageUrl: url, bottomRightText: String(price))
                    }
                    return nil
                }
                let model = CoinsListModel(coins: items, total: "1000", buffer: "980", cached: "20")
                self?.itemsListModel.value = model

            case .failure(let error):
                self?.error.value = error
            }
            self?.loadingStatus.value = .stop
        })
    }

    // TODO: Implement coin detail
    func coinDetail(symbol: String) { }
}
