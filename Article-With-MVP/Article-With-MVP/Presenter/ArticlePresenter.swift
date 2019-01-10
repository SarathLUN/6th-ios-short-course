//
//  ArticlePresenter.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/26/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation

class ArticlePresenter {
    var delegate: ArticlePresenterDelegate?
    var articleService:ArticleService?
    
    init() {
        self.articleService = ArticleService()
        self.articleService?.delegate = self
    }
    
    func getArticles(page:Int, limit:Int) {
        self.articleService?.getArticles(page: page, limit: limit)
    }
    
    func insertUpdateArticle(article:Article, img:Data)  {
        self.articleService?.insertUpdateArticle(article: article, image: img)
    }
    
    func deleteArticle(id:Int) {
        self.articleService?.deleteArticle(id: id)
    }
}

extension ArticlePresenter:ArticleServiceDelegate{
    func responseArticle(articles: [Article], pagination: Pagination) {
        self.delegate?.responseArticle(articles: articles, pagination: pagination)
    }

    func responseMessage(msg: String) {
        self.delegate?.responseMessage(msg: msg)
    }
}
