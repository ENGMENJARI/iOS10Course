//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground" // this is a simple virable


var students : [String] = ["MajdEddin","Ahamd","Samir","Amr"]



students[0]
students.count  // length

// index start from 0
// count : start from 1






var items = [String]()
items.append("Opel")
items.append("KIA")
items.append("mercedusslkjs")
items.count

items.removeFirst()
items.removeLast()
items.append("A1")
items.append("A2")
items.append("A3")
items.append("A4")

print(items)

items.remove(at: 2)
items.insert("k", at: 0)

print(items)






// you can define the datatype of an array
var age: [Int] = [30,20,33,44]


// this is an array of boolean
var isProgrammer = [true,false, true, true]


// this is a mixed array
var collection = ["MHD", 55, 550, true ] as [Any]


// you create an empty arra
var myArray: [String]

//error because we didn't initilize it yet
//print(myArray)

// but you have to initiliaze an empty array
myArray = [String]()

print(myArray)


var top3Apps = [String](repeating: "AppStore", count: 3)
top3Apps[0] = "facebook"
top3Apps
top3Apps[1] = "twitter"
top3Apps[2] = "pinterset"


// to get the
var top3Count: Int = top3Apps.count
print(top3Count)


// swift enables you to add element to an array
// how to add elements to an array 
var iPhones: [String] =  ["iPhone4","iPhone5","iPhone5s"]
iPhones.append("iPhone6")
iPhones.append("iPhone6pluse")



// Note: always new elements add to the last of the array

// how to remove the first element of an array
iPhones.removeFirst()
iPhones



// how to remove the last element of an array
iPhones.removeLast()
iPhones


// how to remove an element of an array
iPhones.remove(at: 2)
iPhones


// how to insert an element to first of an arrya?
iPhones.insert("iPHONE4", at: 0)

iPhones.max()
iPhones.min()
iPhones.popLast()
iPhones



// how to get an element of a specific array
iPhones.index(of: "iPhone5")


// how to know the index range you can return
iPhones.indices


// how to know the last index for a certin array
iPhones.endIndex

// how to check if an array is empty of note
iPhones.isEmpty



// how to sort an array
age
var sortedAges: [Int] = age.sorted()
sortedAges



// this will remove all the items of the arrays
iPhones.removeAll()


