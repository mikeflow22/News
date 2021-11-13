//
//  WebService.swift
//  News
//
//  Created by Michael Flowers on 11/13/21.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print("This is the data: \n\(data)")
               let articles = try? JSONDecoder().decode([Article].self, from: data)
                completion(articles)
            }
        }.resume()
    }
}
