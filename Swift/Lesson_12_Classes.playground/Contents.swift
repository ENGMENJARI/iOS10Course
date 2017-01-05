//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class User{

    
    var name :String = ""
    var sureName :String = ""
    
    init(name : String, sureName :String){
        
        self.name = name
        self.sureName = sureName
    }
    
    func getFullName()-> String{
    
        return self.name + " " + self.sureName
    }
}



var user1 = User (name: "A",sureName: "B")
user1.name = "AA"
user1.getFullName()
