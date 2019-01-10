//
//  ViewController.swift
//  UIAlertControllerExample
//
//  Created by Soeng Saravit on 11/26/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlertButtonPressed(_ sender: Any) {
//        showAlert()
//        showAlertWithTextField()
//        showActionSheet()
        showPopover(sender)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "alert", message: "This is simple alert", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            
        }
        
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func showAlertWithTextField(){
        let alert = UIAlertController(title: "Alert", message: "Please input your info", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Username"
    
        }
        alert.addTextField { (textfield) in
            textfield.isSecureTextEntry = true
            textfield.placeholder = "Password"
        }
        
        let login = UIAlertAction(title: "Login", style: .default) { (action) in
            let username = alert.textFields![0].text
            
            let password = alert.textFields![1].text
            print(username!)
            print(password!)
        }
        
        alert.addAction(login)
        self.present(alert, animated: true, completion: nil)
    }
    
    func showActionSheet() {
        let alert = UIAlertController(title: "Info", message: "This is action sheet alert", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    func showPopover(_ sender:Any) {
        let alert = UIAlertController(title: "Info", message: "This is action sheet alert", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (action) in
            
        }
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        // Popover Alert
        if let popover = alert.popoverPresentationController {
            let button = sender as! UIButton
            popover.sourceRect = button.frame
            popover.sourceView = view
            popover.permittedArrowDirections = .up
        }
    }
    
}

