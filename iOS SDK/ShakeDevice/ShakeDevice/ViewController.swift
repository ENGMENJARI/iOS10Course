//
//  ViewController.swift
//  ShakeDevice
//
//  Created by MajdEddin on 5/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var labelBegin: UILabel!
    @IBOutlet weak var labelFinished: UILabel!
    var flag : Bool = false

    override func canBecomeFirstResponder() -> Bool {
        
        return true
    }

    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        
        if motion == .MotionShake {
            let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
            if (device.hasTorch) {
                do {
                    try device.lockForConfiguration()
                    if (device.torchMode == AVCaptureTorchMode.On) {
                        device.torchMode = AVCaptureTorchMode.Off
                    } else {
                        try device.setTorchModeOnWithLevel(1.0)
                    }
                    device.unlockForConfiguration()
                } catch {
                    print(error)
                }
            }
        }
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake{
            labelFinished.text = "shaking finished"
        }
    }
}

