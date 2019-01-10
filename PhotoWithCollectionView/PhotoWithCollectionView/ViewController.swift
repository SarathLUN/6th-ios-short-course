//
//  ViewController.swift
//  PhotoWithCollectionView
//
//  Created by Soeng Saravit on 12/6/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var photoLibrary = [
        ["f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9"],
        ["fo1", "fo2", "fo3", "fo4", "fo5", "fo6", "fo7", "fo8"],
        ["n1", "n2", "n3", "n4", "n5", "n6", "n7", "n8"],
        ["t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8"]
    ]
    
    var titles = ["Family", "Food", "Nature", "Travel"]
    
    var cellPadding:CGFloat = 4.0
    var numberOfItems:CGFloat = 4.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let collectionWidth = self.collectionView.bounds.width
        
        let itemWidth = (collectionWidth - cellPadding)/numberOfItems
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return photoLibrary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoLibrary[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        let photoName = photoLibrary[indexPath.section][indexPath.item]
        cell.imageView.image = UIImage(named: photoName)
        
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photoHeader", for: indexPath) as! PhotoHeaderCollectionReusableView
        
        let title = titles[indexPath.section]
        
        header.titleLabel.text = title
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageName = photoLibrary[indexPath.section][indexPath.item]
        performSegue(withIdentifier: "showPhoto", sender: imageName)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = collectionView.indexPathsForSelectedItems
        
        if segue.identifier == "showPhoto" {
            let dest = segue.destination as! ShowPhotoViewController
            dest.imageName = sender as? String
        }
    }
}

