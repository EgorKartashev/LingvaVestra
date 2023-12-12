//
//  BaseTabBarController.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import UIKit

enum TabBarType {
    case root
}

final class BaseTabBarController: UITabBarController {
   
    // MARK: - Private properties

    private var barType: TabBarType

    // MARK: - init

    init(barType: TabBarType) {
        self.barType = barType
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInterface()

        switch barType {
        case .root:
            setupRootTabBar()
        }
    }
}

// MARK: - Private methods

private extension BaseTabBarController {

    func setupInterface() {
        tabBar.tintColor = .gray
    }

    func setupRootTabBar() {
        let mainVC = MainAssembler().assembly()

        let mainNC = UINavigationController(rootViewController: mainVC)
        mainNC.tabBarItem = UITabBarItem(.main)

        viewControllers = [mainNC]
    }
}
