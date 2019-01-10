//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Soeng Saravit on 12/5/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var wkWebView: WKWebView!
    
    var hmtlString = """
        <html>
            <body>
                <h1 align='center'>
                    Web View Tutorial
                </h1>
                <a href='https://www.apple.com'>Apple</a>
            </body>
        </html>
    """
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        loadURL("https://www.google.com")
//        loadHTMLString(hmtlString)
//        loadHTMLFile()
        
    }

    func loadURL(_ urlString:String)  {
        if let url = URL(string: urlString){
            let request = URLRequest(url: url)
            
            wkWebView.load(request)
        }
    }
    
    func loadHTMLString(_ htmlString:String) {
        wkWebView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    func loadHTMLFile() {
        let url = Bundle.main.url(forResource: "index", withExtension: "html")
        
        wkWebView.loadFileURL(url!, allowingReadAccessTo: (url?.deletingLastPathComponent())!)
    }

    @IBAction func searchButtonPressed(_ sender: Any) {
        let url = urlTextField.text
        loadURL(url!)
    }
}

