//: Playground - noun: a place where people can play

import UIKit


// swift doesn't accept the nil value
//var x = nil


var i : Int?
var s1 : String
var s2 : String

print(i)

s1 = "123A"
s2 = "23"

// i = Int(s1)


i = Int(s2)
// i * 2 // error
i! * 2


// the safest way unwrap a value in swift
if let myValue = i {
    myValue * 2
}else {
    print("no value")
}


var example0 : Int?
var example1 : Int!

example0 = 11
example1 = 12


print("\(example0)")
print("\(example1)")

let w = Int("123")!
w * 2


