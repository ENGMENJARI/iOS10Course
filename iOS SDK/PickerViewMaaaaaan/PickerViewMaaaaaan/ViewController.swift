//
//  ViewController.swift
//  PickerViewMaaaaaan
//
//  Created by MajdEddin on 5/24/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    // @IBOutlet
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var pickerView1: UIPickerView!

    var sourceArray = ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView1.dataSource = self
        pickerView1.delegate  = self
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sourceArray.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sourceArray[row]
    }

}

