//
//  ViewController.swift
//  UISliderExample
//
//  Created by Soeng Saravit on 11/14/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
        let value = slider.value
        valueLabel.text = String(format: "%.2f", value)
    }
    
}

