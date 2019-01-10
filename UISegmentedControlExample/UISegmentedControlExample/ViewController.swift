//
//  ViewController.swift
//  UISegmentedControlExample
//
//  Created by Soeng Saravit on 11/16/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorSegmentedControl.subviews[0].tintColor = UIColor.red
        colorSegmentedControl.subviews[1].tintColor = UIColor.yellow
        colorSegmentedControl.subviews[2].tintColor = UIColor.green
    }

    @IBAction func colorSegmentedValueChanged(_ sender: Any) {
        let index = colorSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0:
            colorView.backgroundColor = UIColor.red
        case 1:
            colorView.backgroundColor = UIColor.yellow
        case 2:
            colorView.backgroundColor = UIColor.green
        default:
            print("error.")
        }
    }
    
}

