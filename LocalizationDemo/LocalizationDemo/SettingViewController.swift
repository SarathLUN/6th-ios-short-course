//
//  SettingViewController.swift
//  LocalizationDemo
//
//  Created by Soeng Saravit on 12/19/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var changeLanguageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        changeLanguageButton.setTitle("change-lang".localized, for: .normal)
    }
    
    @IBAction func changeLanguageAction(_ sender: Any) {
        if LanguageManager.shared.language == "en" {
            LanguageManager.shared.language = "km"
        }else if LanguageManager.shared.language == "km" {
            LanguageManager.shared.language = "en"
        }
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        appDelegate.window?.rootViewController = storyboard.instantiateInitialViewController()
    }
    
}
