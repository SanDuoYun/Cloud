//
//  NameShape.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
