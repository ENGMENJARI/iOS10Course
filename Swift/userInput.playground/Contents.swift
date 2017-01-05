//: Playground - noun: a place where people can play

import UIKit

func input()-> String{
    let key = NSFileHandle.fileHandleWithStandardInput()
    let input = key.availableData
    return NSString(data: input, encoding: NSUTF8StringEncoding) as! String
}

print("Enter Your name please? ")
var theUserName = input()
print("Your name is \(theUserName)")
