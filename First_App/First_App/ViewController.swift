//
//  ViewController.swift
//  First_App
//
//  Created by Soeng Saravit on 10/16/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var mc = MyClass()
        mc.value = 200
    }
    
    @IBAction func changeTextButtonPressed(_ sender: Any) {
        textLabel.text = "Welcome ios class"
    }
    

}


