//
//  ViewController.swift
//  UISwitch
//
//  Created by MajdEddin on 5/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switchUI: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if switchUI.on{
            label.text = "switch is on"
        }else {
            label.text = "switch is off"
        }
    }

    @IBAction func switchUIChangeAction(sender: UISwitch) {
        if switchUI.on{
            label.text = "switch is on"
        }else {
            label.text = "switch is off"
        }
    }
    

}

