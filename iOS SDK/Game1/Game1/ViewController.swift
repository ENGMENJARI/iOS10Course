//
//  ViewController.swift
//  Game1
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    @IBOutlet weak var triesLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var checkBtn: UIButton!
    
    var triesNumber :Int = 3
    var winNumber :Int = 0
    var userNumber :Int = 0
    // Actions
    @IBAction func checkAction(_ sender: UIButton) {
        print(userInput.text!)
        userNumber = Int(userInput.text!)!
        
        if userNumber >= 0 && userNumber <= 10 {
                winNumber += 1
                winLabel.text  = String(winNumber)
                resultLabel.text = "Bingo !! you're correct"
        }else{
            print("incorrect Number")
            triesNumber -= 1
            triesLabel.text = String(triesNumber)
            resultLabel.text = "Sorry, \(userNumber) is not correct !! try again"
            if triesNumber < 1 {
                gameOver()
            }
        }
        
        
    }
    
    // functions
    func restartGame(){
        
    }
    func gameOver(){
        checkBtn.isEnabled = false
        triesLabel.text = "0"
        resultLabel.text = "Game Over"
    }
    
    
    
    
    // override methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }



}

