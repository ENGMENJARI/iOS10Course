//
//  DataViewController.swift
//  SegueExample
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var data : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = "value"
        dataLabel.text = data
    }

}
