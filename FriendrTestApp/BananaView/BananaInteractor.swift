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

    private func convertDataToString(_ data: Data) -> String {
        if let attributedString = try? NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil
        ) {
            return attributedString.string
        }
        return ""
    }

    private func countBananaWords(_ string: String) -> Int {
        var counter = 0
        let words = string.split(separator: " ")
        words.forEach { word in
            let stringWord = String(word)
            if stringWord.contains(word: "banana") {
                counter += 1
            }
        }
        return counter
    }
}

extension BananaInteractor: BananaBusinessLogic {
    func fetchHtmlContent() {
        networkManager.fetchHtmlContent { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                switch result {
                case .success(let data):
                    let htmlString = self.convertDataToString(data)
                    let wordsCount = self.countBananaWords(htmlString)
                    self.presenter?.presentWordsCount(wordsCount)
                case .failure(_):
                    self.presenter?.presentError()
                }
            }
        }
    }
}
