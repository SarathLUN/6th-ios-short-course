//
//  ContactTableViewCell.swift
//  ContactDemo
//
//  Created by Soeng Saravit on 11/20/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    // Mark - Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(contact: Contact) {
        nameLabel.text = contact.name
        phoneLabel.text = contact.phone
        
        DispatchQueue.main.async {
            if let url = URL(string: contact.image!){
                if let data = try? Data(contentsOf: url) {
                    if let image = UIImage(data: data) {
                        self.profileImageView.image = image
                    }
                }
            }
        }
    }
}
