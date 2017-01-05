//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



var rightName = "Maan"
var rightPassword = "123"



// write a function called login and passing username , password as parameters to check the login


func login (name:String , password : String){
    if name == rightName && password==rightPassword
    {
        print ( "Done ")
    }
    else
    {
    print ("login filed ")
    }



}
login ("majd" , password: "123")

login("DFF", password: "dd")
login("eeee", password: "eeee")





// you name is xxxxx and your age is xx

func printOut ( name:String , age:Int)
{
    print("your name is \(firstName) and your age is \(age1)")

}

printOut("majd", age: 22)
