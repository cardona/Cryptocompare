//
//  Setup+View.swift
//  Cryptocompare
//
//  Created by oscar on 21/11/22.
//

import Foundation
import Lottie
import UIKit

final class SetupView: UIViewController {
    weak var coordinator: MainCoordinator?
    private var viewModel: SetupViewModel? = DefaultSetupViewModel()
    private var animationView: LottieAnimationView?
    private var animationModels: [String]?

    private (set) var titleLbl: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skTitle
        item.textColor = .black

        return item
    }()

    private (set) var descriptionLbl: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skText
        item.numberOfLines = 0
        item.textColor = .black

        return item
    }()

    private (set) var lottieAnimation: LottieAnimationView = {
        let item = LottieAnimationView(name: "121529-businessman-balancing-on-time-unicycle")
        item.translatesAutoresizingMaskIntoConstraints = false
        item.loopMode = .loop
        item.animationSpeed = 0.5
        item.contentMode = .scaleToFill
        item.backgroundBehavior = .pauseAndRestore

        return item
    }()

    private (set) var keysFieldsView: KeysFieldsView = {
        let item = DefaultKeysFieldsView()
        item.translatesAutoresizingMaskIntoConstraints = false

        return item
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBinding()
        viewModel?.viewDidLoad()
    }
}

// MARK: - Setup View
extension SetupView {
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(titleLbl)
        view.addSubview(descriptionLbl)
        view.addSubview(lottieAnimation)
        view.addSubview(keysFieldsView)

        titleLblConstraints()
        descriptionLblConstraints()
        lottieAnimationConstraints()
        keysFieldsViewConstraints()

        titleLbl.text = "setupview_title_key".localized
        descriptionLbl.text = "setupview_description_key".localized

        keysFieldsView.delegate = self
        addKeyboardObserver()
        addSwitchAnimationGesture()
        lottieAnimation.play()
    }

    private func setupBinding() {
        viewModel?.model.bind(listener: { [weak self] model in
            guard let model = model else { return }
            let keysFields = KeysFieldsModel(publicKey: model.publicKey)
            self?.keysFieldsView.setupModel(model: keysFields)
        })

        viewModel?.animations.bind(listener: { [weak self] models in
            guard let models = models else { return }
            self?.animationModels = models
        })
    }

    private func addKeyboardObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    private func addSwitchAnimationGesture() {
        let tapAnimation = UITapGestureRecognizer(target: self, action: #selector(lottieAnimationTap))
        lottieAnimation.addGestureRecognizer(tapAnimation)
    }
}

// MARK: - User Actions
extension SetupView: KeysFieldsViewProtocol {
    // User taps on continues button
    func continueAction(model: KeysFieldsModel) {
        if let pubKey = model.publicKey, !pubKey.isEmpty {
            viewModel?.save(publicKey: pubKey)
            coordinator?.pushHomeView()
        } else {
            coordinator?.showAlert(message: "enter_api_key".localized)
        }
    }

    // User taps on animation view
    @objc func lottieAnimationTap() {
        playNextAnimation()
    }
}

// MARK: - Lottie Animation
extension SetupView {
    private func playNextAnimation() {
        if let animation = animationModels?.first {
            animationModels?.remove(at: 0)
            DispatchQueue.main.async {
                self.lottieAnimation.animation = LottieAnimation.named(animation)
                self.lottieAnimation.play()
            }
        } else {
            coordinator?.showAlert(message: "last_animation_text".localized)
        }
    }
}

// MARK: - Keyboard
extension SetupView {
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
