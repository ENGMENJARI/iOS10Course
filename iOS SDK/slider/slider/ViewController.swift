//
//  ViewController.swift
//  slider
//
//  Created by MajdEddin on 5/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "My Great Font"
       
        label.font = UIFont(name: "Verdana", size: CGFloat(slider.value))
    }


    @IBAction func sliderAction(sender: AnyObject) {
        
        label.font = UIFont(name: "Verdana", size: CGFloat(slider.value))
    }

}

