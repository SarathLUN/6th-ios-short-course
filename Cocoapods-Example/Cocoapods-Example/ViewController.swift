//
//  ViewController.swift
//  Cocoapods-Example
//
//  Created by Soeng Saravit on 12/3/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SVProgressHUD.setBackgroundColor(UIColor.black)
        SVProgressHUD.setBorderColor(UIColor.white)
        SVProgressHUD.setForegroundColor(UIColor.white)
        SVProgressHUD.show()
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(shopSVProgressHUD), userInfo: nil, repeats: false)
    }

    @objc func shopSVProgressHUD()  {
        SVProgressHUD.dismiss()
    }
}

