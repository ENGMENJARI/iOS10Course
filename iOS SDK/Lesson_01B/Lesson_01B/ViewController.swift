//
//  ViewController.swift
//  Lesson_01B
//
//  Created by MajdEddin on 4/10/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputUser: UITextField!
    @IBOutlet weak var lblUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblUser.text = ""
        

    }

  

    @IBAction func changeText(sender: AnyObject) {
        lblUser.text = inputUser.text
        
    }

}

