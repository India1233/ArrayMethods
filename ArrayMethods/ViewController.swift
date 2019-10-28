//
//  ViewController.swift
//  ArrayMethods
//
//  Created by shiga on 27/10/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import UIKit
// Functional Imperative and Declarative Programming

class ViewController: UIViewController {
    
    var numbers:Array<Int> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let isValue = linearSearch(for:10, array: [1,2,3,4,5,6,7,8,9,10])
        print(isValue)
        
        // 2
         numbers = [1,2,3,4,5,6,7,8,9]
        let result = numbers.timesTen()
        print("numbers===>\(numbers)")
        print("result====>\(result)")
        
        let total: Int = 2
        print(total.rightChild)
        
    }
    
//1
    func linearSearch(for value: Int, array:Array<Int>) -> Bool {
        //check all possible values
        for number in array {
            if number == value {
                return true
            }
        }
        return false
    }
    
//2
    func impliesNumberTentimes()  {
        for i in 0..<numbers.count {
            let number = numbers[i] * 10
            numbers[i] = number
        }
    }
   }

extension Array where Element == Int {
    func timesTen() -> [Int] {
        var output = [Int]()
        for number in self {
            output.append(number * 10)
        }
        return output
    }
}


// Int
private extension Int {
    var parant:Int {
        return (self - 1) / 2
    }
    var leftChild:Int{
        return (self * 2) + 1
    }
    
    var rightChild: Int {
        return (self * 2) + 2
    }
}
