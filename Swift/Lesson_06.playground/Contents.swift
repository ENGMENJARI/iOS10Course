//: Playground - noun: a place where people can play

import UIKit


var age: UInt16 = 14
var name: String = "MajdEddin"

// 1. defina a function
func sayHello() {
    let str = "Hello, playground"
//    str = "hi"
    print(str)
}





// 2. call the function by its name
sayHello()



func welcomeMr(name :String){
    print("welmcome mr.\(name)")
    
}

//func getAccountBalance( money :Double){
// here money is constant==> it's as let by default
func getAccountBalance(var money :Double){
    money = money * 0.16
}

welcomeMr("MajdEddin")



func register(age : Int, name: String){
    if age >= 18 {
        print("\(name) has been registered successfully")
    }else{
            print("Sorry!! but \(name) is aged less than 18")
    }
}

register(14,name: "Yazen")

func canRegister(age : Int, name: String)->Bool{
    if age >= 18 {
        return true
    }else{
        return false
    }
}


var result: Bool = canRegister(22, name: "Ahmad")
print(result)



func makeMeUpperCase(name :String)->String{
    let upperName = name.uppercaseString
    return upperName
}

makeMeUpperCase("madjeddin")

