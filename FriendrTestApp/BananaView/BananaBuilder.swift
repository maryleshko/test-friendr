//
//  BananaBuilder.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

class BananaBuilder {
    static func build() -> UIViewController {
        let viewController = BananaViewController()
        let networkManager = NetworkManager()
        let interactor = BananaInteractor(networkManager: networkManager)
        let presenter = BananaPresenter(view: viewController, interactor: interactor)
        viewController.presenter = presenter
        interactor.presenter = presenter
        return viewController
    }
}
