//
//  ViewController.swift
//  playingAudio
//
//  Created by MajdEddin on 5/15/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
@IBOutlet weak var slider: UISlider!
    
    var soundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileLocation =
            NSBundle.mainBundle().pathForResource("sound", ofType: ".mp3")
        
        // try catch: error handling system in swift
        do{
            soundPlayer  = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
            
            
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }catch {
            print(error)
        }
        
    }

    @IBAction func playAudio(sender: UIButton) {
        soundPlayer.play()
    }
    @IBAction func stopSound(sender: UIButton) {
        soundPlayer.stop()
    }
    
    
    @IBAction func audioControl(sender: UISlider) {
        soundPlayer.volume = slider.value
    }


}

