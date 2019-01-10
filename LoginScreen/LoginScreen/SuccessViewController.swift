//
//  SuccessViewController.swift
//  UserDefaultsTest
//
//  Created by Soeng Saravit on 12/7/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signoutUser(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isAuthenticated")
        self.performSegue(withIdentifier: "signout", sender: nil)
    }
    
}
