//
//  ViewController.swift
//  UIScrollViewExample
//
//  Created by Soeng Saravit on 11/27/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView:UIScrollView?
    var imgView:UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: self.view.bounds)
        scrollView?.backgroundColor = UIColor.black
        scrollView?.flashScrollIndicators()
        scrollView?.isDirectionalLockEnabled = true
        scrollView?.delegate = self
        scrollView?.minimumZoomScale = 0.1
        scrollView?.maximumZoomScale = 3
        
        let img = UIImage(named: "corin")
        imgView = UIImageView(image: img)
        
        scrollView?.contentSize = CGSize(width: (imgView?.frame.width)!, height: (imgView?.frame.height)!)
        scrollView?.contentOffset = CGPoint(x: 20, y: 100)
        
        scrollView?.addSubview(imgView!)
        
        self.view.addSubview(scrollView!)
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView
    }

}

