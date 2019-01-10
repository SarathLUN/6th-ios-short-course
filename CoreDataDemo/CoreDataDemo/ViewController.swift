//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Soeng Saravit on 12/11/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var categoryTextField: UITextField!
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        
        let article = Article(context: context)
        article.title = titleTextField.text
        article.descriptions = descriptionTextField.text
        
        let category = Category(context: context)
        category.categoryName = categoryTextField.text
        
        article.category = category
        
        appDelegate.saveContext()
        
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    
}

