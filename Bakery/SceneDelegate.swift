//
//  SceneDelegate.swift
//  Bakery
//
//  Created by murad on 05.03.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    let delegateOwner = DelegateOwner()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let viewController = BakeryViewController()
        viewController.delegate = delegateOwner
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}

