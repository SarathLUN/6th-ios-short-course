//
//  ViewController.swift
//  UIPickerView_Demo
//
//  Created by Soeng Saravit on 11/15/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [
        ["Car","Motor","Ship","Plane"],
        ["Toyota","Honda","Masda","Yamaha"],
        ["2015","2016","2017","2018","2019"]
    ]

    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    

}

extension ViewController:UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelDisplay.text = data[component][row]
    }
    
}
