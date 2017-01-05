//
//  ViewController.swift
//  NavBarInfoExample
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var courseName :String = ""
        
        if segue.identifier == "isoSegue"{
            courseName = "ios"
        } else if segue.identifier == "androidSegue" {
            courseName = "android"
        } else if segue.identifier == "unitySegue"{
            courseName = "unity"
        }
        
        (segue.destinationViewController as! CourseInfoViewController).data = courseName
    }
    
}

