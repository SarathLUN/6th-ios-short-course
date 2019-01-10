//
//  DetailViewController.swift
//  ContactDemo
//
//  Created by Soeng Saravit on 11/20/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var contact:Contact?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if contact != nil {
            nameLabel.text = contact?.name
            emailLabel.text = contact?.email
            phoneLabel.text = contact?.phone
            addressLabel.text = contact?.address
            
            if let url = URL(string: (contact?.image)!){
                if let data = try? Data(contentsOf: url) {
                    if let image = UIImage(data: data) {
                        self.profileImageView.image = image
                    }
                }
            }
        }
    
    }
    
}
