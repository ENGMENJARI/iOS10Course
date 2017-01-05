//
//  ViewController.swift
//  StorageNSUserDefault
//
//  Created by MajdEddin on 6/2/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // write
        NSUserDefaults.standardUserDefaults().setObject("iOS Maaan", forKey: "myKey")
        
        // read
        let  value = try NSUserDefaults.standardUserDefaults().objectForKey("myKey1")
        print(value)
         
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

