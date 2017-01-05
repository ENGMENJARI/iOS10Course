//
//  ViewController.swift
//  TimerApp
//
//  Created by MajdEddin on 4/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LabeltimerCounter: UILabel!
    
    var seconds = 30
    var timer = NSTimer()
    var timerIsOn = false
    
    override func viewDidAppear(animated: Bool) {
//        let value = UIInterfaceOrientation.LandscapeLeft.rawValue
//        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        print("viewDidAppear")
    }
    
    @IBAction func buttonStart(sender: AnyObject) {
        
        if timerIsOn == false {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: (#selector(ViewController.updateTimer)) , userInfo: nil, repeats: true)
            timerIsOn = true
        }
        //1 call update func once every second
        
    }

    @IBAction func buttonStop(sender: AnyObject) {
        timer.invalidate()
        seconds = 30
        LabeltimerCounter.text = "\(seconds)"
        timerIsOn  = false
    }
    
    
    func updateTimer(){
        if seconds > 0 {
        seconds -= 1
        LabeltimerCounter.text = "\(seconds)"
        } else {
            LabeltimerCounter.text = "Time is over"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LabeltimerCounter.text = "\(seconds)"
        print("viewDidLoad")
    }
    
    
    
}

