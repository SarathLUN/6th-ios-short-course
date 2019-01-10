//
//  ArticleTableViewController.swift
//  SC-Demo-2
//
//  Created by Soeng Saravit on 12/24/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {

    var articles:NSArray?
    let BASE_URL = "http://api-ams.me"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addArticel()
        getArticle()
        
      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let articleData = articles {
            return articleData.count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath)

        // Configure the cell...
        let article = self.articles![indexPath.row] as! [String:Any]
        cell.textLabel?.text = article["TITLE"] as? String
        cell.detailTextLabel?.text = article["DESCRIPTION"] as? String
        if let image = article["IMAGE"] as? String {
            if let url = URL(string: image){
                let data = try? Data(contentsOf: url)
                cell.imageView?.image = UIImage(data: data!)
            }
        }
        
        return cell
    }
    
    
    func getArticle() {
        let GET_URL = BASE_URL + "/v1/api/articles?page=1&limit=15"
        
        let url = URL(string: GET_URL)
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let urlSession = URLSession.shared
        urlSession.dataTask(with: urlRequest) { (data, response, error) in
            if error == nil {
                let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: [])
                
                let results = jsonObject as! [String:Any]
                DispatchQueue.main.async {
                    self.articles = results["DATA"] as? NSArray
                    self.tableView.reloadData()
                }
                
            }
        }.resume()
    }
    
    func addArticel() {
        let POST_URL = BASE_URL + "/v1/api/articles"
        let body:[String:Any] = [
            "TITLE": "iOS Test V1",
            "DESCRIPTION": "string",
            "AUTHOR": 1,
            "CATEGORY_ID": 1,
            "STATUS": "1",
            "IMAGE": "http://www.api-ams.me:80/image-thumbnails/thumbnail-02b55920-133e-4627-bd2e-da22e38164dd.jpg"
        ]
        
        let url = URL(string: POST_URL)
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        let jsonData = try? JSONSerialization.data(withJSONObject: body, options: [])
    
        urlRequest.httpBody = jsonData
        let urlSession = URLSession.shared
        
        urlSession.dataTask(with: urlRequest) { (data, response, error) in
            if error == nil {
                print("Insert Success!")
            }
        }.resume()
        
        
    }

}
