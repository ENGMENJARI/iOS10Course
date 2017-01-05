//: Playground - noun: a place where people can play

import UIKit

class MyClass {

    private var color : String
    var size : Int

    init(){
        color = "white"
        size = 0
    }
    
    // set the Initilizer
    init(color : String, size : Int){
        self.color = color
        self.size = size
    }
    
    func printSpecfications(){
        print("Object color is \(color) and size is \(size)")
    }
}


var myObject = MyClass()
myObject.color  = "red"
myObject.size   = 1
myObject.size
myObject.color


myObject.printSpecfications()



class MyClass2 : MyClass {

}



var myObject2 = MyClass2()
myObject2.













