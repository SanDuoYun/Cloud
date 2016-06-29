//
//  Shape.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class Shape: UIViewController{
    
    var numberOfSides: Int = 0
    let numberLet = 0
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func receiveParameters(number: Int) -> Int {
        return number
    }
}