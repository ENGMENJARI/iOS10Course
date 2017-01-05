//
//  ViewController.swift
//  Lesson_01C
//
//  Created by MajdEddin on 4/10/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // attributes
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var productPrice: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    
    // behaviours
    @IBAction func getResult(sender: AnyObject) {
        
        
        let price = Double(productPrice.text!)
        let fullPirce = price! * 1.16
        let result = "Product Name : \(productName.text!) & product price :\(fullPirce)"
        lblResult.text = result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

