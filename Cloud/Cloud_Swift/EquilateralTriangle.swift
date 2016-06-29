//
//  EquilateralTriangle.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import Foundation

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}