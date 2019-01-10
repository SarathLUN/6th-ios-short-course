//
//  ContactTableViewController.swift
//  ContactAppDemo
//
//  Created by Soeng Saravit on 12/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var contacts:[Contact]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchContact()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let contactData = contacts else {
            return 0
        }
        return contactData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell

        // Configure the cell...
        let contact = self.contacts?[indexPath.row]
        cell.nameLabel.text = contact?.name
        cell.phoneLabel.text = contact?.phone
        cell.profileImageView.image = UIImage(data: (contact?.photo)!)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexpath) in
            let contact = self.contacts?[indexPath.row]
            self.context.delete(contact!)
            
            self.appDelegate.saveContext()
            self.fetchContact()
        }
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { (action, indexpath) in
            let contact = self.contacts?[indexPath.row]
            self.performSegue(withIdentifier: "editContact", sender: contact)
        }
        
        return [delete, edit]
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editContact" {
            let dest = segue.destination as? ViewController
            dest?.contact = sender as? Contact
        }
    }
    
    func fetchContact() {
        self.contacts = try? context.fetch(Contact.fetchRequest())
        self.contacts?.reverse()
        self.tableView.reloadData()
    }
   

}
