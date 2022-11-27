//
//  CoinDetail+ViewModel.swift
//  Cryptocompare
//
//  Created by oscar on 25/11/22.
//

import Foundation
import SKRools

protocol CoinDetailsViewModel: CoinDetailsViewModelInput, CoinDetailsViewModelOutput {}

// MARK: - CoinDetailViewModel Protocol
protocol CoinDetailsViewModelInput {
    func coinDetails(symbol: String)
    func convertCoin(quantity: String)
}

// MARK: - CoinDetailsViewModelOutput Protocol
protocol CoinDetailsViewModelOutput {
    var loadingStatus: Box<LoadingStatus> { get }
    var error: Box<SKError?> { get }
    var model: Box<CoinDetailsModel?> { get }
    var result: Box<String?> { get }
}

// MARK: - DefaultCoinDetailsViewModel
final class DefaultCoinDetailsViewModel: CoinDetailsViewModel {
    var loadingStatus: Box<LoadingStatus> = Box(.stop)
    var error: Box<SKError?> = Box(nil)
    var model: Box<CoinDetailsModel?> = Box(nil)
    var result: Box<String?> = Box(nil)
    private var price: Double?
    private var symbol: String?
    private var useCase: CoinDetailUseCase?
    private var config: ConfigUseCase?

    init (useCase: CoinDetailUseCase = DefaultCoinDetailUseCase(), config: ConfigUseCase = DefaultConfigUseCase()) {
        self.useCase = useCase
        self.config = config
    }

    func coinDetails(symbol: String) {
        let param = CoinDetailUseCaseParameters(symbol: symbol)
        useCase?.execute(parameters: param, completion: { [weak self] result in
            switch result {
            case .success(let entity):
                self?.model.value = self?.makeModel(entity: entity)
            case .failure(let error):
                self?.error.value = error
            }
            self?.loadingStatus.value = .stop
        })
    }

    func convertCoin(quantity: String) {
        if let quantityDouble = Double(quantity), let currentPrice = price, let symbol = symbol {
            let total = quantityDouble / currentPrice
            result.value = String(total.rounded(toPlaces: 3)) + " \(symbol)"
        }
    }

    private func makeModel(entity: CoinDetailsEntity) -> CoinDetailsModel {
        /// Round price to 6 decimals
        let roundedPrice = entity.price?.rounded(toPlaces: 6) ?? 0
        let formatPrice = String(roundedPrice) + " €"

        let openDayItem = CoinDetailListModel(type: .openDay, title: String(entity.openDay ?? 0))
        let open24hItem = CoinDetailListModel(type: .open24h, title: String(entity.open24Hour ?? 0))
        let highDayItem = CoinDetailListModel(type: .highDay, title: String(entity.highDay ?? 0))
        let high24Item = CoinDetailListModel(type: .high24Hour, title: String(entity.high24Hour ?? 0))
        let low24HourItem = CoinDetailListModel(type: .low24Hour, title: String(entity.low24Hour ?? 0))
        let details = [openDayItem, open24hItem, highDayItem, high24Item, low24HourItem]
        price = entity.price
        symbol = entity.symbol

        return CoinDetailsModel(symbol: entity.symbol, price: formatPrice, coinDetails: details)
    }
}
