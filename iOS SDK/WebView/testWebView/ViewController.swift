//
//  ViewController.swift
//  testWebView
//
//  Created by MajdEddin on 5/3/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // load local html page 
        let filePath = Bundle.main.url(forResource: "index", withExtension: "html")
        
        
        
        let request = URLRequest(url: filePath!)
        myWebView.loadRequest(request)
        
        
//         load; page from url
//        let url = NSURL(string: "https://www.apple.com/")
//        let request = NSURLRequest(URL: url!)
//        myWebView.loadRequest(request)
        
        myWebView.loadRequest(NSURLRequest(url: NSURL(string : "http://www.google.com")! as URL) as URLRequest)
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activity.stopAnimating()
    
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activity.startAnimating()
    }



}

