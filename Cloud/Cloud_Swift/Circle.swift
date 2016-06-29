//
//  Circle.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import Foundation

class Circle: NamedShape {
    var radius: Double
    let π = 3.14159
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }
    func area() ->  Double {
        return π*radius*radius
    }
    override func simpleDescription() -> String {
        return "A circle with radius of length: \(radius)."
    }
    
}

