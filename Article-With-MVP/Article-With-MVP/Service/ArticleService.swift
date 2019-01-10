//
//  ArticleService.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/25/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ArticleService {
    
    let BASE_URL = "http://api-ams.me"
    let headers = [
        "Content-Type":"application/json",
        "Accept":"application/json"
    ]
    var delegate:ArticleServiceDelegate?
    
    // Mark: - Get Articles From API
    func getArticles(page:Int, limit:Int) {
        let GET_URL = BASE_URL + "/v1/api/articles?page=\(page)&limit=\(limit)"
    
        Alamofire.request(GET_URL, method: .get, parameters:nil, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            if response.result.isSuccess {
                let json = try? JSON(data: response.data!)
                
                var articles = [Article]()
                
                for jsonData in json!["DATA"].array! {
                    articles.append(Article(json: jsonData))
                }
                
                let pagination = Pagination(json: json!["PAGINATION"])

                self.delegate?.responseArticle(articles: articles, pagination: pagination)
            }
        }
    }
    
    // Mark: - Upload Image to API
    func insertUpdateArticle(article:Article, image:Data) {
        let POST_IMAGE_URL = BASE_URL + "/v1/api/uploadfile/single"
        
        Alamofire.upload(multipartFormData: { (multiform) in
            multiform.append(image, withName: "FILE", fileName: ".jpg", mimeType: "image/jpeg")
        }, to: POST_IMAGE_URL, method:.post, headers:headers) { (encodingResult) in
            switch encodingResult {
            case .success(request: let request, streamingFromDisk: _, streamFileURL: _):
                request.responseJSON(completionHandler: { (response) in
                    let json = JSON(response.data!)
                    let imageURL = json["DATA"].string
                    
                    article.image = imageURL
                    
                    if article.id == 0 {
                        self.insertArticle(article: article)
                    }else {
                        self.updateArticle(article: article)
                    }
                    
                })
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    
    // Mark: - Post Article to API
    func insertArticle(article:Article) {
        let POST_URL = BASE_URL + "/v1/api/articles"
        let parameters:Parameters = [
            "TITLE": article.title!,
            "DESCRIPTION": article.description!,
            "AUTHOR": 1,
            "CATEGORY_ID": 1,
            "STATUS": "1",
            "IMAGE": article.image!
        ]
        
        Alamofire.request(POST_URL, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            if response.result.isSuccess {
                self.delegate?.responseMessage(msg: "Insert Successfully!")
            }else if response.result.isFailure {
                self.delegate?.responseMessage(msg: "Insert Failed!")
            }
        }
    }
    
    // Mark: - Update Article to API
    func updateArticle(article:Article) {
        let PUT_URL = BASE_URL + "/v1/api/articles/\(article.id!)"
        let parameters:Parameters = [
            "TITLE": article.title!,
            "DESCRIPTION": article.description!,
            "AUTHOR": 1,
            "CATEGORY_ID": 1,
            "STATUS": "1",
            "IMAGE": article.image!
        ]
        
        Alamofire.request(PUT_URL, method: .put, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            if response.result.isSuccess {
                self.delegate?.responseMessage(msg: "Update Successfully!")
            }else if response.result.isFailure {
                self.delegate?.responseMessage(msg: "Update Failed!")
            }
        }
    }
    
    // Mark: - Delete Article to API
    func deleteArticle(id:Int) {
        let DELETE_URL = BASE_URL + "/v1/api/articles/\(id)"
        
        Alamofire.request(DELETE_URL, method: .delete, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            if response.result.isSuccess {
                self.delegate?.responseMessage(msg: "Delete Successfully!")
            }else if response.result.isFailure {
                self.delegate?.responseMessage(msg: "Delete Failed!")
            }
        }
    }
}
