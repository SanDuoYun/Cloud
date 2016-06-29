//
//  Square.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import Foundation

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() ->  Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}