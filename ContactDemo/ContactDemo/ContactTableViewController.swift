//
//  ContactTableViewController.swift
//  ContactDemo
//
//  Created by Soeng Saravit on 11/20/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    var contacts: [Contact]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = Contact.getContacts()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (contacts?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell

        // Configure the cell...
        cell.configureCell(contact: (contacts?[indexPath.row])!)

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showContact" {
            let dest = segue.destination as! DetailViewController
            
            let indexPath = tableView.indexPathForSelectedRow
            let contact = contacts![(indexPath?.row)!]
            dest.contact = contact
        }
    }

    

}
