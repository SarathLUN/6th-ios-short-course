//
//  ViewController.swift
//  UINavigationControllerExample
//
//  Created by Soeng Saravit on 11/16/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendDataButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showData", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showData" {
            let dest = segue.destination as? DetailViewController
            dest?.email = self.emailTextField.text
            dest?.userName = self.userNameTextField.text
            dest?.password = self.passwordTextField.text
        }
    }
    
    @IBAction func unwindToScrren1(_ sender:UIStoryboardSegue ){}
    
}

