//
//  ViewController.swift
//  UISwitchExample
//
//  Created by Soeng Saravit on 11/14/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var showImageSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchValueChanged(_ sender: Any) {
        
        if showImageSwitch.isOn {
            imageView.isHidden = false
        }else {
            imageView.isHidden = true
        }
        
    }
    
}

