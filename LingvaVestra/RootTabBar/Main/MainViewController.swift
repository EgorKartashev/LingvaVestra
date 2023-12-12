//
//  MainViewController.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import UIKit
import SnapKit

private enum Constants {
    static let topPadding: CGFloat = 20
    static let logoutButtonWidth: CGFloat = 100
    static let logoutButtonHeight: CGFloat = 44
    static let logoutCornerRadius: CGFloat = 10
}

protocol MainViewProtocol: BaseViewProtocol {
    /// Notifies that new data has been received.
    func didReceiveData()
}

final class MainViewController: BaseViewController {
    // MARK: - Properties
    
    var presenter: MainPresenterProtocol!
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.layer.cornerRadius = Constants.logoutCornerRadius
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(logoutDidTap), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    // MARK: - Actions
    @objc
    private func logoutDidTap() {
        presenter.logoutDidTap()
    }
}

// MARK: - Setup Subviews

extension MainViewController {
    
    override func embedSubviews() {
        super.embedSubviews()
        
        view.addSubview(logoutButton)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        logoutButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Constants.topPadding)
            $0.centerX.equalToSuperview()
            $0.size.equalTo(CGSize(
                width: Constants.logoutButtonWidth,
                height: Constants.logoutButtonHeight)
            )
        }
    }
}

// MARK: - View Protocol

extension MainViewController: MainViewProtocol {
    func didReceiveData() {
        // update Interface with data
    }
}
