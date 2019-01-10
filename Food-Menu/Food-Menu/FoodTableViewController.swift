//
//  FoodTableViewController.swift
//  Food-Menu
//
//  Created by Soeng Saravit on 11/26/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController, UISearchResultsUpdating {
    
    let foods =   [
        "Angry Birds Cake",
        "Creme Brelee",
        "Egg Benedict",
        "Full Breakfast",
        "Green Tea",
        "Ham and Cheese Panini",
        "Ham and Egg Sandwich",
        "Hamburger",
        "Instant Noodle with Egg",
        "Japanese Noodle with Pork",
        "Mushroom Risotto",
        "Noodle with BBQ Pork",
        "Starbucks Coffee",
        "Thai Shrimp Cake",
        "Vegetable Curry",
        "White Chocolate Donut"
    ]

    var searchController:UISearchController?
    var filterFood:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterFood = foods
        
        self.searchController = UISearchController(searchResultsController: nil)
        searchController?.dimsBackgroundDuringPresentation = false
        searchController?.hidesNavigationBarDuringPresentation = false
        searchController?.searchResultsUpdater = self
        
        tableView.tableHeaderView = searchController?.searchBar
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filterFood!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell

        // Configure the cell...
        let title = filterFood![indexPath.row]
        cell.configureCell(title: title, imageName: title)

        return cell
    }
 
    @IBAction func showFoodInfo(_ sender: Any) {
        let indexPath = tableView.indexPathForSelectedRow
        
        let title = filterFood![(indexPath?.row)!]
        
        let alert = UIAlertController(title: "Info", message: title, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        if let search = searchController.searchBar.text {
            if search != "" {
                filterFood = foods.filter({ (food) -> Bool in
                    return food.lowercased().contains(search.lowercased())
                })
            }else {
                filterFood = foods
            }
        }else{
            filterFood = foods
        }
        tableView.reloadData()
    }
}
