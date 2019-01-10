//
//  ArticleServiceDelegate.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/25/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation

protocol ArticleServiceDelegate {
    func responseArticle(articles:[Article], pagination:Pagination)
    func responseMessage(msg:String)
}
