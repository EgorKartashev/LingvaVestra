//
//  BaseViewProtocol.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import Foundation

protocol BaseViewProtocol: AnyObject {
    /// Show the navigation bar.
    func showNavigationBar()

    /// Hide the navigation bar.
    func hideNavigationBar()

    /// Show the tab bar.
    func showTabBar()

    /// Hide the tab bar.
    func hideTabBar()
}

extension BaseViewProtocol {
    func showNavigationBar() {}
    func hideNavigationBar() {}
    
    func showTabBar() {}
    func hideTabBar() {}
}
