//
//  ArticleViewModel.swift
//  News
//
//  Created by Michael Flowers on 11/13/21.
//

import Foundation
//parent view model contains the array
struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article)
    }
}

//represents one article
struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    var title: String {
         article.title
    }
    
    var description: String? {
        article.description
    }
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
