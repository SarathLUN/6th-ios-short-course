//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Soeng Saravit on 12/6/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var collectionCell: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionCell.delegate = self
        collectionCell.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.label.text = "Demo"
        cell.backgroundColor = UIColor.green
        return cell
        
    }
    
    


}

