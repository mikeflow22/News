//
//  Article.swift
//  News
//
//  Created by Michael Flowers on 11/13/21.
//

import Foundation
//top level for json based on api documentation
struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
