//
//  ViewController.swift
//  CountTimeGame
//
//  Created by MajdEddin on 4/26/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelHighscore: UILabel!
    @IBOutlet weak var userCounter: UILabel!
    @IBOutlet weak var timerCounter: UILabel!
    @IBOutlet weak var buttonStartGame: UIButton!
    @IBOutlet weak var lifeCount: UILabel!
    
    
    @IBOutlet weak var buttonTap: UIButton!
    
    var seconds:Int = 30
    var highScore:Int = 0
    var userTap : Int = 0
    var timer = NSTimer()
    var life : Int = 3
    
    
    var colorArray = [UIColor.blueColor(),UIColor.brownColor(),UIColor.orangeColor(),UIColor.darkGrayColor(),UIColor.whiteColor(), UIColor.cyanColor()]
    
    @IBAction func tapUserAction(sender: UIButton) {
        if life > 0 {
            let c:Int?  = Int(timerCounter.text!)
            print(c!)
            let c1:Int = c!
            print(c1)
            if c1 % 2 == 0 {
                userTap += 1
                userCounter.text = "\(userTap)"
            }else{
                life -= 1
                lifeCount.text = "\(life)"
            }
        }else {
            print("Game Over!!!")
        }
        
        
    }
    
    @IBAction func startCounter(sender: UIButton) {
        buttonTap.enabled = true
        buttonStartGame.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(ViewController.updateTimer) , userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHighscore.text = "high score: \(highScore)"
        buttonTap.enabled = false
        lifeCount.text = "\(life)"
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        let randomIndex = Int(arc4random_uniform(UInt32(colorArray.count)))
        if life > 0 {
            let c:Int?  = Int(timerCounter.text!)
            print(c!)
            let c1:Int = c!
            print(c1)
            if c1 % 2 == 0 {
                userTap += 1
                userCounter.text = "\(userTap)"
            }else{
                life -= 1
                lifeCount.text = "\(life)"
            }
            self.view.backgroundColor  = colorArray[randomIndex]

        }else {
            print("Game Over!!!")
            self.view.backgroundColor  = UIColor.redColor()
            timer.invalidate()
        }
        
    }
    
    func updateTimer(){
        if seconds > 0 {
            seconds -= 1
            timerCounter.text = "\(seconds)"
        }else {
            timerCounter.text = "\(0)"
            timer.invalidate() // stop timer
            if highScore < userTap {
                labelHighscore.text = "high score: \(userTap)"
            }
            buttonStartGame.setTitle("Restart Game ", forState: .Normal)
            buttonStartGame.enabled = true
            seconds = 30
            buttonTap.enabled = false
            userTap = 0
        }
    }
}