//
//  ViewController.swift
//  AlertUSER
//
//  Created by MajdEddin on 5/3/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // old Alert before the iOS 9
        // Settings
        let Alert = UIAlertView( title:"View Did Load",
                                 message: "View Did load functions is here ",
                                 delegate: self,
                                 cancelButtonTitle: "OKay")
        
        
        // show
      
        
    }
    
    
    
    @IBAction func AlertMeAction(sender: AnyObject) {
        
        
        let Alert = UIAlertController(title: "My Title", message: "My Message ", preferredStyle: .Alert)
        
        let DismissButton1 = UIAlertAction(title: "Cancle", style: .Cancel,handler: {
            (alert: UIAlertAction) -> Void in})
        
        let DismissButton2 = UIAlertAction(title: "Add", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in})
        
        let DismissButton3 = UIAlertAction(title: "Delete", style: .Destructive, handler: {
            (alert: UIAlertAction) -> Void in
            exit(0) // exit the application when click the button
        })
        Alert.addAction(DismissButton1)
        Alert.addAction(DismissButton2)
        Alert.addAction(DismissButton3)
        presentViewController(Alert, animated: true, completion: nil)
    }
    
}

