//
//  MainRouter.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 12.12.2023.
//

import Foundation

protocol MainRouterProtocol {
    /// Navigate to the authentication screen.
    func routToAuth()
}

final class MainRouter {

    // MARK: - Properties

    var navigationManager: NavigationProtocol?

}

// MARK: - Router Protocol

extension MainRouter: MainRouterProtocol {
    func routToAuth() {
        navigationManager?.navigate(.auth)
    }
}
