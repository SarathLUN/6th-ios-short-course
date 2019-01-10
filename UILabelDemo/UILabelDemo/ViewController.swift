//
//  ViewController.swift
//  UILabelDemo
//
//  Created by Soeng Saravit on 10/30/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addLabel()
    }

    func addLabel() {
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 300, height: 400))
        
        label.text = "Welcome to iOS"
        label.textColor = UIColor.blue
        label.font = UIFont(name: "Times New Roman", size: 18)
        label.textAlignment = .center
        
        label.numberOfLines = 0
        
        self.view.addSubview(label)
    }
}

