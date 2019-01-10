//
//  ViewController.swift
//  UIButtonDemo
//
//  Created by Soeng Saravit on 10/31/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 20, y: 300, width: 70, height: 50)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.red, for: .highlighted)
        
        button.setTitle("Click me", for: .normal)
        button.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
        self.view.addSubview(button)
        
    }

    @IBAction func clickMeACtion(_ sender: Any) {
        
        print("Click me...")
    }
    
    @objc func clickMe() {
        print("Click me")
    }
}

