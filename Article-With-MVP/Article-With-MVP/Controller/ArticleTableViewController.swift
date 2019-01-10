//
//  ArticleTableViewController.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/25/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import SVProgressHUD

class ArticleTableViewController: UITableViewController {
    
    var articles:[Article]?
    var page = 1
    var limit = 10
    var articlePresenter:ArticlePresenter?
    var totalCount = 0
    var indicatorView = UIActivityIndicatorView(style: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.articles = [Article]()
        self.articlePresenter = ArticlePresenter()
        self.articlePresenter?.delegate = self
        self.articlePresenter?.getArticles(page: page, limit: limit)
        
        SVProgressHUD.show()
        SVProgressHUD.setBackgroundColor(UIColor.black)
        SVProgressHUD.setForegroundColor(UIColor.white)
        
        refreshControl?.addTarget(self, action: #selector(self.refreshData), for: .valueChanged)

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let articleData = articles {
            return articleData.count
        }
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleTableViewCell

        // Configure the cell...
        let article = self.articles?[indexPath.row]
        cell.configureCell(article: article!)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let edit = UIContextualAction(style: .normal, title: nil) { (action, view, _) in
            let article = self.articles![indexPath.row]
            self.performSegue(withIdentifier: "editArticle", sender: article)
        }
        edit.image = UIImage(named: "edit")
        return UISwipeActionsConfiguration(actions: [edit])
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: nil) { (action, view, _) in
            let id = self.articles![indexPath.row].id
            self.articlePresenter?.deleteArticle(id: id!)
        }
        delete.image = UIImage(named: "delete")
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == (self.articles?.count)! - 1 {
            if (articles?.count)! < totalCount {
                print("load more...")
                self.tableView.tableFooterView = self.indicatorView
                self.tableView.tableFooterView?.center = self.indicatorView.center
                self.indicatorView.startAnimating()
                page += 1
                self.articlePresenter?.getArticles(page: page, limit: limit)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    
    @objc func refreshData(){
        page = 1
        self.articlePresenter?.getArticles(page: page, limit: limit)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editArticle" {
            let dest = segue.destination as! AddEditViewController
            dest.article = sender as? Article
        }
    }

}

extension ArticleTableViewController: ArticlePresenterDelegate{
    func responseArticle(articles: [Article], pagination: Pagination) {
        if page == 1 {
            self.articles = []
        }
        self.totalCount = pagination.totalCount!
        self.refreshControl?.endRefreshing()
        self.indicatorView.stopAnimating()
        self.articles = self.articles! + articles
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
            self.tableView.reloadData()
        }
    }
    
    func responseMessage(msg: String) {
        let alert = UIAlertController(title: "Info", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.page = 1
            self.articlePresenter?.getArticles(page: self.page, limit: self.limit)
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}
