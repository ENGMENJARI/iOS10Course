//: Playground - noun: a place where people can play

import UIKit

// variable can hold a value
// if there's no value that means the variable is: 
// empty = nil

// Optional means may or may not have a value 
// Optional Syntax is the quetion mark 
// prevent the programmer from referancing to a nil value 
// when we have possiblity to have no value we have to define the variable as optional

// how to define an optional
var noValue : String
//print(noValue)    // error

var optionalString: String? = "d"
print(optionalString)


if optionalString == nil {
        print("There's no value for this variable")
}else{
    print("The value of the variable is  : \(optionalString)")
    print("The value of the variable is  : \(optionalString!)")
}

// you can't use optional with let because you can't change the value of a constant value



var amOPtional : String?
amOPtional = ""
if let checkIfValue = amOPtional {
    print("There's a value here : \(amOPtional)")
}else{
    print("There's NO value here : \(amOPtional)")
}
// the nil or empty var is handled .. not crash

var a = 4
var b = a + 4
var c : Int?
c = 3
var d = c! + 4

var mustHaveValue : Int!
mustHaveValue = 5
print(mustHaveValue)



