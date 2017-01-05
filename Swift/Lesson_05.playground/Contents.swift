//: Playground - noun: a place where people can play

import UIKit

var isMale: Bool = true
var isFemale: Bool =  false





if isMale {  // true
    print("you're a man")
}
else
{
    print("you're a woman")
}


isMale == false   // true or false


if isMale == true{
    print("Men are not allowed here ")
}else{
    print("women are welcomed here ")
}



var price:Float = 59.55
var accountBalance:Float = 442.00


if price <= accountBalance{
    print("you can pruches")
    accountBalance = accountBalance  - price
    print("your account balance now is \(accountBalance)")
}else{
print("sorry! you need more money")
}


var userName: String = "Rafeeq"
var password: String = "123"

if userName == "MajdEddin"{
    if password == "123"{
        print("you have seccessfully login in")
    }else{
            print("check password please")
    }
    
}else{
        print("check username please")
}


// && , ||, !
if userName == "MajdEddin" && password == "123"{
        print("you have seccessfully login in")
}else{
    print("check login information please")
}


// || playerTeam example
// ! ==> is not 


// if else if

if userName == "MajdEddin"
{
    print("MajdEddin")
} else if userName == "Rafeeq" {
    print("Your're Rafeeq")
}
