//
//  BananaViewController.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

class BananaViewController: UIViewController {
    var presenter: BananaPresentationLogic?

    private let rootView = BananaView()

    override func loadView() {
        super.loadView()
        view = rootView
    }

    override func viewDidLoad() {
        presenter?.fetchBananaCount()
    }

}

extension BananaViewController: BananaDisplayLogic {
}
