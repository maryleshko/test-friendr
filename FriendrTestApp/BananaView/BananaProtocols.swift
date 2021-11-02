//
//  BananaProtocols.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

protocol BananaBusinessLogic: AnyObject {
    func fetchHtmlContent()
}

protocol BananaPresentationLogic: AnyObject {
    func fetchWordsCount()
    func presentWordsCount(_ wordCount: Int)
    func presentError()
}

protocol BananaDisplayLogic: AnyObject {
    func displayWordsCount(_ text: String)
}
