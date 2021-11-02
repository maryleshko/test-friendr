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
    func fetchBananaCount()
}

protocol BananaDisplayLogic: AnyObject {
}
