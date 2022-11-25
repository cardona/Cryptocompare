//
//  AppDelegate.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import SKRools
import UIKit

enum APPConfig {
    static let token = "PUT YOUR TOKEN HERE"
    static let baseUel = "https://min-api.cryptocompare.com/data/"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: MainCoordinator?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let debugGroups: [DebugGroup] = [
            .networking,
            .system,
            .alert,
            .filesystem,
            .keychaing,
            .networkingBody,
            .networkingHeaders,
            .secureEnclave,
            .configuration
        ]

        SKRoolsConfig.shared.config(loggerGroups: debugGroups)
        SKRoolsConfig.shared.config(apikeyPublic: APPConfig.token)

        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()

        return true
    }
}
