//
//  LetterTableViewController.swift
//  UITableViewExample
//
//  Created by Soeng Saravit on 11/19/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class LetterTableViewController: UITableViewController {
    
    let titles = ["A", "B", "C", "D"]
    
    var data = [
        ["Apple", "Art", "Artist", "Application", "Acceleratte"],
        ["Book", "Buy", "Bar", "Ball"],
        ["Car", "Cat", "Cook", "Can"],
        ["Dog", "Door", "Dark", "Dad"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "letterCell", for: indexPath)

        cell.textLabel?.text = data[indexPath.section][indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
}
