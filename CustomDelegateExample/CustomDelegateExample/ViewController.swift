//
//  ViewController.swift
//  CustomDelegateExample
//
//  Created by Soeng Saravit on 11/28/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProcessDelegate {
    
    
    
    @IBOutlet weak var statusLabel: UILabel!
    var process:Process?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        process = Process()
        process?.delegate = self
        process?.startProcess()
        
        statusLabel.text = "Start Processing..."
    }
    
    func didFinishTask(msg: String) {
        statusLabel.text = msg
    }

}

