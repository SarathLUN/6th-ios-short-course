//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by Soeng Saravit on 12/7/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        let userDefault = UserDefaults.standard
        let username = userDefault.string(forKey: "username")
        let pwd = userDefault.string(forKey: "password")
      
        if username == usernameTextField.text && pwd == passwordTextField.text {
            errorLabel.text = ""
            self.performSegue(withIdentifier: "loginSuccess", sender: nil)
        }else{
            errorLabel.text = "Invalid username or password"
        }
    }
}

