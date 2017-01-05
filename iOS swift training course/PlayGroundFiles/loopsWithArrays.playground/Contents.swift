//: Playground - noun: a place where people can play

import UIKit

var students : [String] = ["MajdEddin","Maan", "Rafeeq","MDH"]

//print(students)

// Requirments
var count : Int = students.count
var index = 0

// 
while (index < count){
    print("Student No.\(index+1) called \(students[index])")
    index += 1
}


