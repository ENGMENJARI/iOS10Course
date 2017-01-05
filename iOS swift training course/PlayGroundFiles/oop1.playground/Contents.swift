//: Playground - noun: a place where people can play

import UIKit

// OOP : Object Oriented Programming
// abstration تجرد

// Class Blueprint, proto-type
class Mobile {
    // Varibales -> Propreties, attributes
    var color : String = "Black"
    var storage : Int = 16
    var screenSize : Float = 4.0
    
    // functions-> Methods
    func ringing(){
        print("mobile is ringing now ")
    }
    func slient(){
        print("mobile is slient now ")
    }
    func capturePhone(){
        print("capture a photo  ")
    }
}


var x : String = ""

// Object from the class
var iPhone4 = Mobile() // create a new object from mobile class called iPhone4

iPhone4.ringing()
iPhone4.color
iPhone4.storage
