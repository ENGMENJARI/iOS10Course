//
//  CourseClass.swift
//  NavBarInfoExample
//
//  Created by MajdEddin on 4/17/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import Foundation

class Course{

    private var name : String
    private var hours : Int
    private var info : String
    
    
    
    init(name :String, hours :Int, info : String){
        self.name = name
        self.hours  = hours
        self.info = info
    }

    
    func getName() -> String {
        return name
    }
    func getHours() -> Int {
        return hours
    }

    func getInfo() -> String {
        return info
    }

    
}