//
//  AppDelegate.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let viewController = BananaBuilder.build()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

