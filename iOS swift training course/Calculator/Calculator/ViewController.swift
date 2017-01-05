//
//  ViewController.swift
//  Calculator
//
//  Created by MajdEddin on 4/13/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //:  --------- @IBOutlet
    @IBOutlet weak var display: UILabel!
    
    //: --------- Variables
    var firstNumber:Bool = false
    var numberStack:[Double] = Array<Double>()
    var displayValue : Double {
        get{
            return Double(display.text!)!
        }
        set{
            display.text = "\(newValue)"
            firstNumber = false
        }
    }
    
    @IBAction func appendDigit(sender: UIButton) {
        if firstNumber == true{
            display.text! = display.text! + sender.currentTitle!
        } else {
            display.text! =  sender.currentTitle!
            firstNumber = true
        }
    }
    
    @IBAction func enter(sender: UIButton) {
        firstNumber = false
        numberStack.append(displayValue)
        print(numberStack)
        
    }
  
    @IBAction func operationAction(sender: UIButton) {
        let operation = sender.currentTitle!
        switch operation {
        case "*":
            
            break
//        case "/":
//            <#code#>
//            break
//        case "-":
//            <#code#>
//            break
//        case "+":
//            <#code#>
//            break
        default:
            break
        }
        
    }
}

