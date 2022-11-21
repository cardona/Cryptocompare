//
//  AppDelegate.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import SKRools
import UIKit

enum APIKeys {
    static let token = "PUT YOUR TOKEN HERE"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: MainCoordinator?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        SKRoolsConfig.shared.config(url: "https://min-api.cryptocompare.com/")
        SKRoolsConfig.shared.config(loggerGroups: [.networking])

        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()

        return true
    }
}
