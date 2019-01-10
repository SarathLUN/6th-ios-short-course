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
    
    @IBOutlet weak var touchIDButton: UIButton!
    
    let auth = BiometricIDAuth()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
        
        touchIDButton.isHidden = !auth.canEvaluatePolicy()
        
        switch auth.biometricType() {
        case .faceID:
            touchIDButton.setImage(UIImage(named: "FaceIcon"), for: .normal)
        case .touchID:
            touchIDButton.setImage(UIImage(named: "Touch-icon-lg"), for:.normal )
        default:
            touchIDButton.isHidden = false
        }
        
    }
    
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        let isLogin = checkLogin(username: username!, password: password!)
        
        if isLogin {
            UserDefaults.standard.set(true, forKey: "isAuthenticated")
            self.errorLabel.text = ""
            self.performSegue(withIdentifier: "loginSuccess", sender: nil)
        }else{
            self.errorLabel.text = "Incorrect username or password"
        }
    }
    
    func checkLogin(username:String, password:String) -> Bool {
        guard username == UserDefaults.standard.string(forKey: "username") else {
            return false
        }
        do{
            let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName, account: username, accessGroup: KeychainConfiguration.accessGroup)
            let keychainPassword = try passwordItem.readPassword()
            return password == keychainPassword
        }catch{
            print(error)
        }
        return false
    }
    @IBAction func touchIDAction(_ sender: Any) {
        auth.authenticateUser {
            UserDefaults.standard.set(true, forKey: "isAuthenticated")
            self.performSegue(withIdentifier: "loginSuccess", sender: nil)
        }
    }
}

