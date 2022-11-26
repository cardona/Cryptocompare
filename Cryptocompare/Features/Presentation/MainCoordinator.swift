//
//  MainCoordinator.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import SKRools
import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var imagesCache = NSCache<NSString, NSData>()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() where coordinator === child {
            childCoordinators.remove(at: index)
            break
        }
    }
}

// MARK: - Default view
extension MainCoordinator {
    func start() {
        pushSetupView()
    }
}

// MARK: - Views Navigation
extension MainCoordinator {
    func pushSetupView() {
        let home = SetupView()
        home.coordinator = self

        navigationController.pushViewController(home, animated: true)
    }

    func coinsListView() {
        let home = CoinsListView()
        home.coordinator = self
        navigationController.navigationItem.setHidesBackButton(true, animated: false)

        navigationController.pushViewController(home, animated: true)
    }

    func pushCoinDetailView(symbol: String) {
        let coinDetailsView = CoinDetailView()
        coinDetailsView.coordinator = self
        navigationController.pushViewController(coinDetailsView, animated: true)

        coinDetailsView.viewModel.coinDetails(symbol: symbol)
    }

    func popToRootViewController(animated: Bool) {
        navigationController.popToRootViewController(animated: animated)
    }

    func showAlert(message: String?) {
        let alert = UIAlertController(title: "alert_title_key".localized, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok_key".localized, style: .default, handler: { action in
            switch action.style {
            default:
                SKLogger.shared.log(msg: "Alert Closed: \(message ?? "")", group: .alert, severity: .info)
            }
        }))

        DispatchQueue.main.async {
            self.navigationController.visibleViewController?.present(alert, animated: true)
        }
    }
}
