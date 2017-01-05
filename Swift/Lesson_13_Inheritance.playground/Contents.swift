//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class Person{
    private var name :String = ""
    var sureName :String = ""
    var age : Int = 0
    var nationality :String = ""
    
    init(){
    }
    
    init(name : String, sureName :String){
        
        self.name = name
        self.sureName = sureName
    }
    
    func getFullName()-> String{
        
        return self.name + " " + self.sureName
    }
    
    func method1(){
        print("this is Method 1 ")
    }
}

class Trainer : Person{
    
    var salary :Double = 0.0
    
    override init(){
        super.init()
    }
//    init (name: String, sureName: <#T##String#>, salary : Double){
//        super.init(name: name, sureName: sureName)
//        super.name = name
//        super.sureName = sureName
//        self.salary = salary
//    }
    
    override func method1(){
        print("from Trainer class  ")
    }
}

var c = Person()

c.name = "ff"
c.getFullName()


c.method1()

var c1 = Trainer()

