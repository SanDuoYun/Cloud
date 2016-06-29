//
//  ViewController.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/8.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    
}

class ViewController: UIViewController {
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.swiftTestPrint()
        self.swiftTestVarAndLet()
        self.swiftTestString()
        self.swiftTestArrayAndDictionary()
        self.swiftTestIfAndSwitch()
        self.swiftTestFor()
        print(self.swiftTestGreet("Bob", food: "Banana"))
        let statistics = swiftTestCalculateStatistics([5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.1)
        print(statistics)
        print(swiftTestSumOf())
        print(swiftTestSumOf(42, 597, 12))
        print(swiftTestAverage(20, 50, 70))
        print(swiftTestReturnFifteen())
        let increment = swiftTestMakeIncrementer()
        print(increment(7))
        let numbers = [20, 19, 7, 12]
        print(swiftTestHasAnyMatches(numbers, condition: swiftTestLessThanTen))
        print(numbers.map({ (number: Int) -> Int in
            let result = 3 * number
            return result
        }))
        print(numbers.map({ (number: Int) -> Int in
            var result:Int = 0
            if(number%2 == 1) {
                result = 0
            } else {
                result = number
            }
            return result
        }))
        
        let mappedNumbers = numbers.map({ number in 3 * number })
        print(mappedNumbers)
        
        let mappedNumbersOne = numbers.map({ number in number%2==1 })
        print(mappedNumbersOne)
        
        let sortedNumbers = numbers.sort { $0 > $1 }
        print(sortedNumbers)
        
        let shape = Shape()
        shape.numberOfSides = 7
        let shapeDescription = shape.simpleDescription()
        let numberPara = shape.receiveParameters(8)
        print("\(shapeDescription)\(numberPara)")
        
        let test = Square(sideLength: 5.2, name: "my test square")
        print(test.name)
        print(test.area())
        print(test.simpleDescription())
        
        let testRadius = Circle(radius: 5.2, name: "my test circle")
        print(testRadius.name)
        print(testRadius.area())
        print(testRadius.simpleDescription())
        
        let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
        print(triangle.perimeter)
        triangle.perimeter = 9.9
        print(triangle.sideLength)
        print(triangle.simpleDescription())
        
        let triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let sideLength = optionalSquare?.sideLength
        print(sideLength)
        
        
        let ace = Rank.Ace
        let aceRawValue = ace.rawValue
        print(ace)
        print(aceRawValue)

        
    }
    //MARK: Swift Test Methods
    func swiftTestPrint() {
        //1
        print("Hello, World!")
    }
    func swiftTestVarAndLet(){
        //2
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        print(myVariable)
        print(myConstant)
        let myFloat:Float = 4
        print(myFloat)
    }
    
    func swiftTestString() {
        //3
        let label = "The width is:"
        let width = 94
        let widthLabel = label + String(width)
        print(widthLabel)
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        let cloudSummary = "I have \(apples) \(oranges) pieces of fruit."
        
        print(appleSummary)
        print(fruitSummary)
        print(cloudSummary)
        
        let friends:Float = 8
        let friendSummary = "Hello \(friends)Tom."
        print(friendSummary)
    }
    
    func swiftTestArrayAndDictionary() {
        //4
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
            ]
        occupations["Jayne"] = "Public Relations"
        print(shoppingList)
        print(occupations)
        
        let emptyArray = [String]()
        let emptyDictionary = [String: Float]()
        shoppingList = []
        occupations = [:]
        print(emptyArray)
        print(emptyDictionary)
        print(shoppingList)
        print(occupations)
        
        let emptyArray1 = ["Cloud", "Test"]
        let emptyDictionary1 = [
            "Cloud" : "Test",
        ]
        print(emptyArray1)
        print(emptyDictionary1)
    }
    
    func swiftTestIfAndSwitch() {
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            } }
        print(teamScore)
        
        
        let optionalString: String? = "Hello"
        print(optionalString == nil)
        //let optionalName: String? = "John Appleseed"
        let optionalName: String? = nil
        print(optionalName)
        var greeting = "Hello!"
        print(greeting)
        if let name = optionalName {
            greeting = "Hello, \(name)"
            print(greeting)
        }
        else {
            greeting = "Test!!!"
            print(greeting)
        }
        
        let nickName: String? = nil
        let fullName: String = "John Appleseed"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        print(informalGreeting)
        
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
    }
    
    func swiftTestFor() {
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 35, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        var largest = 0
        var type = ""
        
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    type = kind
                }
            } }
        print(largest)
        print(type)
        
        
        var n = 2
        while n < 100 {
            n=n*2 }
        print(n)
        var m = 2
        repeat {
            m=m*2
        } while m < 100
        print(m)
        
        var i = 100
        while i < 100 {
            i=i*2
        }
        print(i)
        var j = 100
        repeat {
            j=j*2
        } while j < 100
        print(j)
        
        
        var firstForLoop = 0
        for i in 0..<4 {
            firstForLoop += i
        }
        print(firstForLoop)
        
        var secondForLoop = 0
        for i in 0...4 {
            secondForLoop += i
        }
        print(secondForLoop)
    }
    
    
    func swiftTestGreet(name: String, food: String) -> String {
        return "Hello \(name), today eat \(food)."
    }
    
    
    func swiftTestCalculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score }
            sum += score }
        return (min, max, sum)
    }
    
    func swiftTestSumOf(numbers: Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
    
    func swiftTestAverage(numbers: Int...) -> Float {
        var sum = 0
        for number in numbers {
            sum += number
        }
        let average:Float = Float(sum)/Float(numbers.count)
        return average
    }


    func swiftTestReturnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    }
    
    func swiftTestMakeIncrementer() -> (Int -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    
    func swiftTestHasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                print(item)
                return true
            } }
        return false
    }
    
    func swiftTestLessThanTen(number: Int) -> Bool {
        return number < 10
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



