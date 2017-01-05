//
//  ViewController.swift
//  DatePickerMaaaan
//
//  Created by MajdEddin on 5/24/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // @IB Outlet
    @IBOutlet weak var datePicker1: UIDatePicker!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var datePicker2: UIDatePicker!
    
    // Define NSDateFormatter
    let dateFormatter = NSDateFormatter()
    let timeFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDate()
    }
    
    func setupDate(){
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        myLabel.text = dateFormatter.stringFromDate(datePicker1.date) + " " + timeFormatter.stringFromDate(datePicker2.date)
    }
    
    @IBAction func datePicker1Action(sender: UIDatePicker) {
        setupDate()
    }

    @IBAction func datePicker2Action(sender: UIDatePicker) {
        setupDate()
    }
}

