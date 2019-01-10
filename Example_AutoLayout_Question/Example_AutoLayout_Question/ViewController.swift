//
//  ViewController.swift
//  Example_AutoLayout_Question
//
//  Created by Soeng Saravit on 12/3/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var questionList = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = questionList[i]
        
    }

    @IBAction func nextQuestion(_ sender: UIButton) {
        
        i += 1
        
        if(i>=questionList.count){
          i = 0
        }
        
        displayLabel.text = questionList[i]
        
    }
    
}

