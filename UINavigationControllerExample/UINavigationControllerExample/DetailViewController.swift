//
//  DetailViewController.swift
//  UINavigationControllerExample
//
//  Created by Soeng Saravit on 11/16/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var email:String?
    var userName:String?
    var password:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = email
        userNameLabel.text = userName
        passwordLabel.text = password
    }

}
