

//
//  ViewController.swift
//  Lesson_02_Sender
//
//  Created by MajdEddin on 4/12/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    @IBAction func executeCode(sender: UIButton) {
        let value = sender.currentTitle
        
        print(value!)
        
        //
//        if sender == button1
//        {
//        print("hi 1")
//        } else {
//        print("hi 2")
//        }
     
    }


}

