//
//  SetupView+ViewModel.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools

protocol SetupViewModel: SetupViewModelInput, SetupViewModelOutput {}

// MARK: - SetupViewModelInput Protocol

/// Here define all the methods that the view use
/// to notify the user's actions or if the view needs data.
///
/// The viewModel applies the logic and, if necessary updates
/// any of the binded variables with the view so that it displays
/// the data or an error.
///
/// Only methods, they can contain parameters but don't use closures and variables.
protocol SetupViewModelInput {
    /// This method is called when the view is loaded but not presented
    func viewDidLoad()
    func save(publicKey: String?)
}

// MARK: - SetupViewModelOutput Protocol

/// Here you define all the binding variables you need to update the view.
/// For example loadingStatus and error.
///
/// When the content of the variable changes, the view is notified and
/// the view must act accordingly.
/// Only binding and read-only variables, do not use methods or closures
protocol SetupViewModelOutput {
    var error: Box<SKError?> { get }
    var model: Box<SetupModel?> { get }
    var animations: Box<[String]?> { get }
}

// MARK: - DefaultSetupViewModel
final class DefaultSetupViewModel: SetupViewModel {
    var error: Box<SKError?> = Box(nil)
    var model: Box<SetupModel?> = Box(nil)
    var animations: Box<[String]?> = Box(nil)

    func viewDidLoad() {
        model.value = prepareModel()
        animations.value = lottieAnimationModels
    }

    private func prepareModel() -> SetupModel {
        let configPublicKey = SKRoolsConfig.shared.apikeyPublic()
        let publicKey = extractKey(config: configPublicKey)

        return SetupModel(publicKey: publicKey)
    }

    private func extractKey(config: String?) -> String? {
        guard let storedKey = config else { return nil }
        if storedKey.contains("PUT HERE") {
            return nil
        } else {
            return storedKey
        }
    }

    func save(publicKey: String?) {
        if let publicKey = publicKey {
            // TODO: Save token on keychange
            SKRoolsConfig.shared.config(apikeyPublic: publicKey)
        }
    }
}

extension DefaultSetupViewModel {
    private var lottieAnimationModels: [String] {
        return ["88724-thinking",
                "18123-developer",
                "106069-thinking",
                "127399-cycle-rider",
                "43885-laptop-working",
                "98991-exams-preparation.json",
                "16766-forget-password-animation"]
    }
}
