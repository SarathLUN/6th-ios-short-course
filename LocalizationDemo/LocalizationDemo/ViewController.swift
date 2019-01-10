//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Soeng Saravit on 12/19/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        welcomeLabel.text = "welcome".localized
        self.tabBarController?.tabBar.items![0].title = "home".localized
        self.tabBarController?.tabBar.items![1].title = "setting".localized
    }


}

