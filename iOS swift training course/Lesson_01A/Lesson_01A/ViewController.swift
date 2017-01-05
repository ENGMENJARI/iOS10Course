//
//  ViewController.swift
//  Lesson_01A
//
//  Created by MajdEddin on 4/10/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
    // attributes
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var myButton: UIButton!

    
    
    // Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblTitle.text = " xxxxxx ya"
    }

    @IBAction func clickMeButton( sender : UIButton){
    lblTitle.text = " Button has been clicked by user "
    }


}

