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
}

// MARK: - CoinDetailsViewModelOutput Protocol
protocol CoinDetailsViewModelOutput {
    var loadingStatus: Box<LoadingStatus> { get }
    var error: Box<SKError?> { get }
    var model: Box<CoinDetailsModel?> { get }
}

// MARK: - DefaultCoinDetailsViewModel
final class DefaultCoinDetailsViewModel: CoinDetailsViewModel {
    var loadingStatus: Box<LoadingStatus> = Box(.stop)
    var error: Box<SKError?> = Box(nil)
    var model: Box<CoinDetailsModel?> = Box(nil)
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
                self?.model.value = CoinDetailsModel(entity: entity)
            case .failure(let error):
                self?.error.value = error
            }
            self?.loadingStatus.value = .stop
        })
    }
}
