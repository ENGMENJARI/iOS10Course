//
//  ViewController.swift
//  Lesson_02A
//
//  Created by MajdEddin on 4/12/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!  // change for property
    
    // @IBOutlet
    // weak
    // var
    // userInput
    // UITextField
    // !
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkResult(sender: UIButton) {
        let x:Int! = Int(userInput.text!)
        print(x)
        
        
        
        if x % 2 == 0 {
            print("Even")
            resultLabel.text = " Result : Even"
        } else {
            print("Odd")
            resultLabel.text = " Result : odd"
        }
    }
    
}

/*
 
 //        var x: Int?  // x is optional (might be a value or not = nil)
 //        var y :Int
 //
 //        var xy : Int!
 //
 //        // null : lock of value (NO VALUE)
 //        //y = nil
 //        x =  55
 //        xy = 88
 //
 //        print(xy)
 //
 //        print(x!) // unwrapping optional
 ////        55 != x
 ////        55 == x!
 //
 //
 //        print("button has been clicked")
 //        print(userInput.text!)
 //        var userNum:Int! = Int(userInput.text!)
 //        if userNum % 2 == 0 {
 //            print("Even")
 //            resultLabel.text = " Result : Even"
 //        } else {
 //            print("Odd")
 //            resultLabel.text = " Result : odd"
 //        }
 */