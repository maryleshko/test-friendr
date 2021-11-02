//
//  BananaPresenter.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

final class BananaPresenter {
    weak var view: BananaDisplayLogic?
    private var interactor: BananaBusinessLogic

    init(view: BananaDisplayLogic, interactor: BananaBusinessLogic) {
        self.view = view
        self.interactor = interactor
    }
}

extension BananaPresenter: BananaPresentationLogic {
    func fetchBananaCount() {
        interactor.fetch()
    }
}
