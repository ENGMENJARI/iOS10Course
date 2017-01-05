//
//  ViewController.swift
//  SegueExample
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func sendDataAction(sender: UIButton) {
        let value = inputTextField.text!
        print("Value : \(value)")
   
        performSegueWithIdentifier("mSegue", sender :nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
    }
}

