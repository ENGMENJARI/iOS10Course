//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. create string array called students which has 3 names




// 2. create an integer array called studentsMark which has


// [KEY : VALUE]
var items : [String: Int]
items = ["iPad" : 300, "iPhone SE": 399, "iPhone s6": 550]


items["iPad"]





















var simpleDictionary : [String : Int]

simpleDictionary = ["A" : 1, "B" : 2]


simpleDictionary["A"]
// you must use the key not the value
//simpleDictionary[1]
print(simpleDictionary["A"])
print(simpleDictionary["A"]!)

//Dictionay in swift may or may not return a value

// if value is exist
if let value = simpleDictionary["A"]{
    print(value)
}


// how to clear a dictionary? 
simpleDictionary = [:]

// how to check if the dictionary is empty
if simpleDictionary.isEmpty {
    print("dicationay is empty")
}

// a hight score for a game
var highScore : [String : Int] = ["MajdEddin" : 344, "MHD" : 343, "waleed": 211]


for (playerName, playerScore) in highScore {
    print("\(playerName) : \(playerScore)")
}

// how to add an item to a dictionary

highScore["Obada"] = 987    // you don't neet append to add an item to the dictionary

for (playerName, playerScore) in highScore {
    print("\(playerName) : \(playerScore)")
}




// old array : Indexed Array
var myArray  = [String]()
myArray.append("hi")
