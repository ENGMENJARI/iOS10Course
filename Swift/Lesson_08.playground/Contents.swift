//: Playground - noun: a place where people can play

import UIKit

//func sendEmail(){
//    print("email has been sent!!")
//}
//
//
//var cou = 0
//while cou <= 100000{
//sendEmail()
//    cou++
//}
//





// Loops

var str = "Hello, playground"



var marks: [Int] = [22,44,67,73,99,22]

// you need to know how many mark are greater than 50 
// so you have to follow  and check on by one 



var counter = 0


for var i = 0 ; i < marks.count ; i++ {
    if(marks[i] >= 50 ){
        counter++
    }
}

print("You have : \(counter) students get mark greater than 50")



for var t = 0 ; t < 1000 ; t++ {
    print(t)
}

for var t = 1000 ; t > 0 ; t-- {
    print(t)
}


var x = 0

while x < 10 {
    print(x)
    x++
}


for xx in marks {
    print(xx)
}
