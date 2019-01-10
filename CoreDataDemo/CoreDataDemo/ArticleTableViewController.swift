//
//  ArticleTableViewController.swift
//  CoreDataDemo
//
//  Created by Soeng Saravit on 12/11/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var articles:[Article]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let articlesData = articles else {
            return 0
        }
        
        return articlesData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath)

         // Configure the cell...
        cell.textLabel?.text = articles![indexPath.row].title
        cell.detailTextLabel?.text = articles![indexPath.row].category?.categoryName

        return cell
    }

    func fetchData() {
        articles = try? context.fetch(Article.fetchRequest())
        self.tableView.reloadData()
    }
}
