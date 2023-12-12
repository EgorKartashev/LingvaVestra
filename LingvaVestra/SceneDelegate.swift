//
//  SceneDelegate.swift
//  LingvaVestra
//
//  Created by Егор on 05.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    private let navigationManager: NavigationProtocol = NavigationManager.shared

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        
        navigationManager.setWindow(window)

        // change later: checking if authorized and set the root
        navigationManager.navigate(.tabBar)
    }
}
