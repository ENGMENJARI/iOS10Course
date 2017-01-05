//
//  ViewController.swift
//  isBiggerThanZero
//
//  Created by MajdEddin on 4/14/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBAction func checkValue(sender: AnyObject) {
        
        // print(userInput.text?.isEmpty)
        // get the count of the
        let count: Int = userInput.text!.characters.count
        print("Count : \(count)")
      
        
        if let text = userInput.text where !text.isEmpty
        {
            print("test not empty")
            print("the value is \(text)" )
        }else{
            print("test is empty")
        }
    
    }
    
    
}

