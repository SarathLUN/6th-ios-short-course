//
//  ViewController.swift
//  UIImageViewExample
//
//  Created by Soeng Saravit on 11/13/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addImageView()
        
    }
    
    func addImageView() {
        let imageView = UIImageView(frame: CGRect(x: 30, y: 100, width: 300, height: 100))
        
        // Single Image
//        let image = UIImage(named: "image1111")
//        imageView.image = image
        
        // Animated
//        let img1 = UIImage(named: "image1111")
//        let img2 = UIImage(named: "image-1")
        
//        imageView.animationImages = [img1!, img2!]
//        imageView.animationDuration = 5
//
//        imageView.startAnimating()
        
        do {
            let url = URL(string: "http://35.240.238.182:8080/image-thumbnails/thumbnail-90b3e701-1384-4616-896b-f253cf28c835.jpg")
            
            let data = try Data(contentsOf: url!)
            
            let image = UIImage(data: data)
            
            imageView.image = image
            
            self.view.addSubview(imageView)
        } catch let err {
            print(err.localizedDescription)
        }
    
    }


}

