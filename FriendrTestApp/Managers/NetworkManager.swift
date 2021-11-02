//
//  NetworkManager.swift
//  FriendrTestApp
//
//  Created by Mary Leshko on 2.11.21.
//

import Foundation

final class NetworkManager {
    func fetchHtmlContent(completionHandler: @escaping (Result<Data, Error>) -> Void) {
        if let url = NSURL(string: "https://en.wikipedia.org/wiki/Banana") {
            let task = URLSession.shared.dataTask(with: url as URL) { (data, response, error) in
                if data != nil {
                    if let fetchedData = data {
                        completionHandler(.success(fetchedData))
                    }
                } else if let error = error {
                    completionHandler(.failure(error))
                }
            }
            task.resume()
        }
    }
}
