//
//  CourseInfoViewController.swift
//  NavBarInfoExample
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class CourseInfoViewController: UIViewController {
    
    var data : String = ""
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var couresImageView: UIImageView!
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        setupData()
    }
    
    func setupData(){
        if data == "ios" {
            
            nameLable.text = ""
            nameLable.text = "Course Name : iOS Development"
            
            hoursLabel.text = ""
            hoursLabel.text = "Course Hours : 60h"
            
            couresImageView.image = UIImage(named: "apple")
            infoTextView.text = "This iPhone training course is designed to quickly get you up to speed how to make iPhone apps for iPhone devices. This iPhone development-training course will teach you the basis of the iPhone platform and the application life cycle. You will be able to write simple GUI applications, use built-in widgets and components, work with the database to store data locally, and much more by the end of this Android training course. "
            
        }else if data == "android" {
            
            let mCourse: Course = Course(name: "Andorid", hours: 80, info: " andorid development is greate way to work ")
            nameLable.text = mCourse.getName()
            hoursLabel.text = String(mCourse.getHours())
            infoTextView.text = mCourse.getInfo()
            
            couresImageView.image = UIImage(named: data)
            
            
        }else  if data == "unity" {
            nameLable.text = ""
            nameLable.text = "Course Name : Unity 3D Development"
            
            hoursLabel.text = ""
            hoursLabel.text = "Course Hours : 50h"
            couresImageView.image = UIImage(named: "unity")
            infoTextView.text = "Interested in game making? Start in Unity—a game engine for mobile and desktop games and real-time simulations and designed to let you focus on creating amazing games. we will show the techniques used in game development with Unity and introduces the basics of scripting and game functionality. First, learn how to import models and textures, organize your project and hierarchies, and add terrain, water, and foliage. Next, We will clarify how to use lighting to bring the game to life, and add rendering, particles, and interactivity. The end result is a sample game with a lush environment, fully animated characters, and some basic interactive gameplay."
        }
    }
}
