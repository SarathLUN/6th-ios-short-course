//
//  ViewController.swift
//  UITextFieldDemo
//
//  Created by Soeng Saravit on 10/30/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.borderStyle = .bezel
        usernameTextField.textAlignment = .left
        
        usernameTextField.delegate = self
    }
    
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print(textField.text!)
        
        return true
    }

}

