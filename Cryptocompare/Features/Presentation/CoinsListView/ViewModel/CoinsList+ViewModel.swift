//
//  CoinsList+ViewModel.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

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
    func coinsList()
    func deleteCache()
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
    private var config: ConfigUseCase?
    private let params = CoinsListUseCaseParameters(total: 20, outputSymbol: .eur)

    init (useCase: CoinsListUseCase = DefaultCoinsListUseCase(),
          config: ConfigUseCase = DefaultConfigUseCase()) {
        self.useCase = useCase
        self.config = config
    }

    func viewDidLoad() {
        coinsList()
    }

    func coinsList() {
        loadingStatus.value = .start
        useCase?.execute(parameters: params, completion: { [weak self] result in
            switch result {
            case .success(let entity):
                let model = self?.makeModel(entity: entity)
                if model?.coins.isEmpty ?? true {
                    self?.error.value = .emptyData
                } else {
                    self?.itemsListModel.value = model
                }
            case .failure(let error):
                self?.error.value = error
            }
            self?.loadingStatus.value = .stop
        })
    }

    func deleteCache() {
        PersistentDataBaseContext.shared.destroy(completion: { _ in
            SKLogger.shared.log(msg: "Pull To Refresh: DB Destroyed", group: .database, severity: .info)
        })
    }
}

// MARK: - Make Model
extension DefaultCoinsListViewModel {
    private func makeModel(entity: [CoinEntity]) -> CoinsListModel? {
        /// Create model and remove residual coins and nil objectes
        let items = entity.compactMap { return formatText(coin: $0) }

        return CoinsListModel(coins: items, total: "1000", buffer: "980", cached: "20")
    }

    /// Prepare model to send it to view
    private func formatText(coin: CoinEntity) -> ItemsListModel? {
        guard
            let identifier = coin.symbol,
            var name = coin.fullName,
            let imageUrl = coin.imageUrl,
            let symbol = coin.symbol,
            let price = coin.price
        else {
            return nil
        }
        /// Create image URL
        guard let url = URL(string: Constants.imageBaseUrl + imageUrl) else { return nil }

        /// Round price to 6 decimals
        let roundedPrice = price.rounded(toPlaces: 6)

        /// Remove residual coins
        guard roundedPrice > 0.000_000_000_1 else { return nil }
        let formatPrice = String(roundedPrice) + " €"

        /// Remove Duplicated Symbol on fullName
        if let dotRange = name.range(of: "(") {
            name.removeSubrange(dotRange.lowerBound..<name.endIndex)
        }

        return ItemsListModel(identifier: identifier, title: name, subtitle: symbol, imageUrl: url, bottomRightText: formatPrice)
    }
}

extension DefaultCoinsListViewModel {
    private enum Constants {
        static let imageBaseUrl = "https://www.cryptocompare.com"
    }
}
