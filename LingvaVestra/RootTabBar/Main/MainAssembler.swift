//
//  MainAssembler.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import Foundation

final class MainAssembler {

    /// Assembly the main components for the main screen.
    ///
    /// - Returns: An instance of `MainViewController` configured with its associated presenter and router.
    func assembly() -> MainViewController {
        let view = MainViewController()
        let presenter = MainPresenter()
        let router = MainRouter()
        let navigationManager = NavigationManager.shared

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        router.navigationManager = navigationManager

        return view
    }
}
