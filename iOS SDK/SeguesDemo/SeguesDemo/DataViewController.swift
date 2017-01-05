//
//  DataViewController.swift
//  SeguesDemo
//
//  Created by MajdEddin on 5/8/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel : UILabel!
    var sendData = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text? += "\(sendData)"
    }
}
