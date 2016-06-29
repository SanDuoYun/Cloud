//
//  TriangleAndSquare.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/12.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import Foundation

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}