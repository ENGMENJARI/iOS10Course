//: Playground - noun: a place where people can play

import UIKit



var username = "M"
var password = "P"

func checkLogin(username :String, password :String){
    
    if username == "M"{
        if password == "P"{
            print("Login successful")
        }else{
            print("Password is incorrect ")
        }
    }else{
        print("User is not exist!!")
    }
}


checkLogin("M", password: "Pdd")
//var grade = 120
//
//if grade <= 100{
//    if grade >= 90 {
//        print("A")
//    }else if grade <= 89 && grade >= 80{
//        print("B")
//    }else if grade <= 79 && grade >= 70{
//        print("C")
//    }else if grade <= 69 && grade >= 60{
//        print("D")
//    }else if grade <= 59 && grade >= 50{
//        print("E")
//    }else if grade <= 49 {
//        print("Failed")
//    }
//}else{
//    print("Out of range ")
//}



//var x1 = 44
//
//if x1 == 4 {
//print("قيمة اكس تساوي ٤")
//} else {
//print("قيمة اكس لا تساوي ٤")
//}


var accountBalance = 200


var penPrice = 100
var mousePrice = 120
var mugPrice = 85


func buy(p1 : Int){
    accountBalance = accountBalance - p1
    print("Your new balance is \(accountBalance)")
}


buy(mugPrice)





//
//var str = "Hello, playground"
//
//
//let tax:Double = 0.16
//var grandDulexPrice:Double = 3.65
//
//
//var result = 4 + 5
//result = 4 * 5
//result = 4 - 5
//result = 5/5
//
//
//
//// the full sandwish price is : 4.85
//
//
//
////func getFullPrice(){
////    let fullPrice = 0
////    fullPrice =
////    
////    print("Your bill is : \(fullPrice) ")
////}
////
////
////getFullPrice()
//
//func sum(num1:Int , num2:Int){
//print ("print the sum of \(num1) and \(num2)=\(num1+num2)")
//}
//
//sum(3, num2: 8)
//
//
////
////
////// 1. define a new function
////func sayHello(name : String){
////    // name : String parameter
////    print("welcome Mr.\(name)")
////}
////
////
////// 2. calling the function
////sayHello("Maan")
////sayHello("MajdEddin")
