//
//  SignUpViewController.swift
//  UserDefaultsTest
//
//  Created by Soeng Saravit on 12/7/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    

    @IBAction func signUpButtonPressed(_ sender: Any) {
        let username = usernameTextField.text
        let email = emailTextField.text
        let pwd = passwordTextField.text
        let confirmPwd = confirmPasswordTextField.text
        
        if confirmPwd != pwd {
            let alert = UIAlertController(title: "Error", message: "Password does not match!", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                
            }
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }else if confirmPwd == pwd {
            let userDefaults = UserDefaults.standard
            userDefaults.set(username, forKey: "username")
            userDefaults.set(email, forKey: "email")
            do{
                let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName, account: username!, accessGroup: KeychainConfiguration.accessGroup)
                try passwordItem.savePassword(pwd!)
            }catch{
                print(error)
            }
            
            let alert = UIAlertController(title: "Success", message: "You have successfully signed up your account", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                
            }
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }

}
