//
//  KeysFields+View.swift
//  Cryptocompare
//
//  Created by oscar on 24/11/22.
//

import Foundation
import SKRools
import UIKit

protocol KeysFieldsView: UIView {
    var delegate: KeysFieldsViewProtocol? { get set }
    func setupModel(model: KeysFieldsModel)
}

final class DefaultKeysFieldsView: UIView, KeysFieldsView {
    var delegate: KeysFieldsViewProtocol?

    private (set) var publicKeyLbl: UILabel = {
        let item = UILabel()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skText
        item.textColor = .black

        return item
    }()

    private (set) var publicKeyTxt: UITextField = {
        let item = UITextField()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.font = .skText
        item.layer.borderWidth = 1
        item.layer.borderColor = UIColor.skBorder.cgColor
        item.textColor = .black

        return item
    }()

    private (set) var continueBtn: UIButton = {
        let item = UIButton()
        item.translatesAutoresizingMaskIntoConstraints = false
        item.titleLabel?.font = .skText
        item.layer.cornerRadius = 6
        item.layer.borderWidth = 0.8
        item.layer.borderColor = UIColor.skBorder.cgColor
        item.backgroundColor = .gray

        return item
    }()

    // MARK: - View lifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        setupView()
    }

    // MARK: - Setup View
    private func setupView() {
        backgroundColor = .white
        addSubview(publicKeyLbl)
        addSubview(publicKeyTxt)
        addSubview(continueBtn)
        publicKeyLblConstraints()
        publicKeyTxtConstraints()
        continueBtnConstraints()
        publicKeyTxt.delegate = self

        continueBtn.addTarget(self, action: #selector(continueAction), for: .touchUpInside)
        publicKeyLbl.text = "API Key"
        continueBtn.setTitle("continue_key".localized, for: .normal)
        publicKeyTxt.placeholder = "put you API key here"
        backgroundColor = .clear
    }

    // MARK: - Setup Model
    func setupModel(model: KeysFieldsModel) {
        DispatchQueue.main.async {
            self.publicKeyTxt.text = model.publicKey
            if let text = self.publicKeyTxt.text, !text.isEmpty {
                self.continueBtn.backgroundColor = .skButton
            }
            if let title = model.title {
                self.publicKeyLbl.text = title
            }
            if let placeholder = model.placeholder {
                self.publicKeyTxt.placeholder = placeholder
            }
        }
    }
}

// MARK: - User Actions
extension DefaultKeysFieldsView {
    @objc private func continueAction() {
        let model = KeysFieldsModel(publicKey: publicKeyTxt.text)
        delegate?.continueAction(model: model)
    }
}

// MARK: - UITextFieldDelegate
extension DefaultKeysFieldsView: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if !(publicKeyTxt.text?.isEmpty ?? true) {
            continueBtn.backgroundColor = .skButton
        } else {
            continueBtn.backgroundColor = .gray
        }
    }
}
