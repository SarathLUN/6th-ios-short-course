//
//  ViewController.swift
//  UITableViewExample
//
//  Created by Soeng Saravit on 11/19/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var fruits = [
        "Apple",
        "Banana",
        "Mango",
        "Coconut",
        "Water Melon",
        "Orange",
        "Pine Apple",
        "Apple",
        "Banana",
        "Mango",
        "Coconut",
        "Water Melon",
        "Orange",
        "Pine Apple",
        "Apple",
        "Banana",
        "Mango",
        "Coconut",
        "Water Melon",
        "Orange",
        "Pine Apple"
    ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell")
        
        cell?.textLabel?.text = fruits[indexPath.row]
        cell?.imageView?.image = UIImage(named: "Apple")
        
        return cell!
    }
}

