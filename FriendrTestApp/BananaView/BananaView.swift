//
//  BananaView.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class BananaView: UIView {
    private lazy var counterLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()

    private lazy var activityIndicator: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        view.style = .large
        view.color = .black
        return view
    }()

    var model: Model? {
        didSet {
            activityIndicator.removeFromSuperview()
            counterLabel.text = model?.text
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayout()
    }

    private func setupLayout() {
        backgroundColor = .yellow
        addSubview(counterLabel)
        addSubview(activityIndicator)

        NSLayoutConstraint.activate([
            counterLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6),
            counterLabel.heightAnchor.constraint(equalTo: counterLabel.widthAnchor),
            counterLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            counterLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            activityIndicator.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6),
            activityIndicator.heightAnchor.constraint(equalTo: counterLabel.widthAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}

extension BananaView {
    struct Model {
        var text: String
    }
}
