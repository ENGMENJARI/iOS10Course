//
//  ViewController.swift
//  UISagmented
//
//  Created by MajdEddin on 5/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelUI: UILabel!
    @IBOutlet weak var segmentedUI: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      labelUI.text =
        
        segmentedUI.titleForSegmentAtIndex(segmentedUI.selectedSegmentIndex)
    }


    @IBAction func actionSegmented(sender: UISegmentedControl) {
        labelUI.text = segmentedUI.titleForSegmentAtIndex(segmentedUI.selectedSegmentIndex)
        
        
        
//        if segmentedUI.selectedSegmentIndex == 0{
//        labelUI.text = "First"}
//        if segmentedUI.selectedSegmentIndex == 1{
//        labelUI.text = "Second"}
//        if segmentedUI.selectedSegmentIndex == 2{
//        labelUI.text = "Third"}
        
    }

}

