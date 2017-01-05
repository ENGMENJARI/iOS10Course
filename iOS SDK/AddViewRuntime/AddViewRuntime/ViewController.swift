//
//  ViewController.swift
//  AddViewRuntime
//
//  Created by MajdEddin on 4/28/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var myLabel1 : UILabel!
    var myLabel2 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel1 = UILabel()
        myLabel1.text  = "First Label"
        myLabel1.font = UIFont.systemFontOfSize(36)
        // myLabel1.center = CGPoint(x: 100, y: 50)
        myLabel1.sizeToFit()
        view.addSubview(myLabel1)
        
        UIView.animateWithDuration(
            1.5, delay: 0.0,
            usingSpringWithDamping: 0.9,
            initialSpringVelocity: 0.0,
            options: .AllowAnimatedContent,
            animations: {
                self.myLabel1.center = CGPoint(x: 100, y: 40 + 200)
                print("animation start ")
            },
            completion: nil)
        
        myLabel2 = UILabel()
        myLabel2.text  = "Second Label"
        myLabel2.font = UIFont.systemFontOfSize(60)
        myLabel2.center = CGPoint(x: 200, y: 90)
        myLabel2.sizeToFit()
        view.addSubview(myLabel2)
    }
    
    
    
    
    
}

