//
//  BananaInteractor.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class BananaInteractor {
    weak var presenter: BananaPresentationLogic?
    private var networkManager: NetworkManager

    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
}

extension BananaInteractor: BananaBusinessLogic {
    func fetchHtmlContent() {
        networkManager.fetchHtmlContent()
    }
}
