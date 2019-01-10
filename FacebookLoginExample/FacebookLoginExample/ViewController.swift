//
//  ViewController.swift
//  FacebookLoginExample
//
//  Created by Soeng Saravit on 12/4/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate    {
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    var loginButton:FBSDKLoginButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.loginButton = FBSDKLoginButton()
        self.loginButton?.center = self.view.center
        self.loginButton?.delegate = self
        self.loginButton?.readPermissions = ["email", "public_profile"]
        
        self.view.addSubview(loginButton!)
        isHideElements(true)
    }


    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error == nil {
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"id, name, email"])?.start(completionHandler: { (connection, result, error) in
                if error == nil {
                    
                    self.isHideElements(false)
                    
                    let user:[String:Any] = result as! [String:Any]
                    self.usernameLabel.text = user["name"] as? String
                    self.emailLabel.text = user["email"] as? String
                    
                    let id = user["id"] as! String
                    
                   
                    let url = URL(string: "https://graph.facebook.com/\(id)/picture?type=large")
                    let data = try? Data(contentsOf: url!)
                    self.imageView.image = UIImage(data: data!)
                }
            })
            
        }
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        isHideElements(true)
    }
    
    func isHideElements(_ b:Bool) {
        self.usernameLabel.isHidden = b
        self.imageView.isHidden = b
        self.emailLabel.isHidden = b
    }
}

