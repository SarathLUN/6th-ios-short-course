//
//  ShowPhotoViewController.swift
//  PhotoWithCollectionView
//
//  Created by Soeng Saravit on 12/7/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ShowPhotoViewController: UIViewController {

    @IBOutlet weak var showImageView: UIImageView!
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        if imageName != nil {
            showImageView.image = UIImage(named: imageName!)
        }
        
    }
    

    

}
