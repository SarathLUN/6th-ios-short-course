//
//  ViewController.swift
//  SC-DEMO-1
//
//  Created by Soeng Saravit on 12/21/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://images.unsplash.com/photo-1521210805555-515917bfebdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
        
        let sessionConfig = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: sessionConfig, delegate: self, delegateQueue: nil)
        
        let downloadTask = urlSession.downloadTask(with: url!) { (location, response, error) in
            
            print((response?.mimeType)!)
            
            let data = try? Data(contentsOf: location!)
            DispatchQueue.main.async {
                self.progressView.isHidden = true
                self.imageView.image = UIImage(data: data!)
            }
        }
        downloadTask.resume()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)

        DispatchQueue.main.async {
            self.progressView.progress = progress
        }
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
//
//        let data = try? Data(contentsOf: location)
//        DispatchQueue.main.async {
//            self.progressView.isHidden = true
//            self.imageView.image = UIImage(data: data!)
//        }
    }

}

