//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Numbers 


// Integer : is a whole number which can be :
// signed : positive , zero , negative
// unsiged : postive , zero

var x:Int = 4
x = -400


// error can't make negative because it must be positive
var y: UInt =   44                //-44
var age:UInt = 30 // you can't have a negative value for the age


let minValue = Int.min
let maxValue = Int.max


let minUValue = UInt.min
let maxUValue = UInt.max



print(Int16.max)
print(Int16.min)

print(UInt16.max)
print(UInt16.min)


print(Int32.max)
print(Int32.min)


print(UInt32.max)
print(UInt32.min)


print(Int64.max)
print(Int64.min)



print(UInt64.max)
print(UInt64.min)




// double : is a fracial number which has at least 15 numbers after the .
// float : is a fracial number which has 6 numbers after . (6 digits are the biggest)
// double and fload can hold more value that the Integer

// float is great for currency

var dec: Double = 3.5
var flo: Float = 4.5
// give us an error because swift is safe language
 // var sum = dec * flo
var sum = dec * Double(flo)

print(sum.dynamicType)
// Type Casting





// how to get the dataType of a variable?
print(minValue.dynamicType)
print(y.dynamicType)


// how to get the current time
let now = NSDate();



let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components([.Day , .Month , .Year], fromDate: date)

let year =  components.year
let month = components.month
let day = components.day




// how to generate a random number in swift

let diceRoll = Int(arc4random_uniform(UInt32(6)))
arc4random()/1000000000
//Returns a random number in the range of 0 to 2^32.
//
//Good to know: If you do not a number of that super large range then you can also use the functions rand() and random() which return a random number from “just” half the range

rand()
//random()

drand48()
//Returns a random double between 0.0 and 1.0
//
//Be aware that the return value is Double and not Int! To learn more about drand48() and its “family” of similar functions check the:
//https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man3/drand48.3.html



let n = arc4random_uniform(100) // UInt32
print(n)

//Returns a random number between 0 and the inserted parameter minus 1.
//    
//For example arc4random_uniform(3) may return 0, 1 or 2 but not 3.
//
//That function is the most common random function but it has one minor issue: dealing with UInt32 in Swift is not very common so a conversion to Int is normally done like in the following example:
let random = Int(arc4random_uniform(3))

// ref: http://stackoverflow.com/questions/32552336/generating-random-numbers-with-swift-2




let dateComponents = NSDateComponents()
let da = dateComponents.day
let mon = dateComponents.month
