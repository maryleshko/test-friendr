//
//  String+Extensions.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//

import Foundation

extension String {
    func contains(word: String) -> Bool {
        return self.range(of: "\\b\(word)\\b", options: .regularExpression) != nil
    }
}
