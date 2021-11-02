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
    func fetchWordsCount() {
        interactor.fetchHtmlContent()
    }

    func presentWordsCount(_ wordCount: Int) {
        let displayedText = "Text contains \(wordCount) words"
        view?.displayWordsCount(displayedText)
    }

    func presentError() {
        let displayedText = "We couldn't count the number of words"
        view?.displayWordsCount(displayedText)
    }
}
