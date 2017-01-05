//
//  ViewController.swift
//  SeguesDemo
//
//  Created by MajdEddin on 5/8/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usrInput: UITextField!

    @IBAction func showSegue(sender: UIButton) {
        print("Segue on my way")
        performSegueWithIdentifier("goToRed", sender: nil)
        
    }
    
    @IBAction func sendDataSegue(sender: UIButton) {
        print("send Data lol")
        let userAge = usrInput.text
        performSegueWithIdentifier("yellowSeg", sender: userAge)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "yellowSeg" {
            if let data = segue.destinationViewController as? DataViewController{
             //   data.sendData = "12"
                if let theAge = sender as? String{
                    data.sendData = theAge
                }
            }
        }
        
    }

   

}

