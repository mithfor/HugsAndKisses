//
//  SceneDelegate.swift
//  HugsAndKisses
//
//  Created by Dmitrii Voronin on 27.03.2025.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: scene)
        self.window?.rootViewController = UIHostingController(
            rootView:
                SplashView(
                    logoImage: Image(systemName: "heart.fill")
                )
        )
        self.window?.makeKeyAndVisible()
        
    }
}

