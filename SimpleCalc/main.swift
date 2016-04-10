//
//  main.swift
//  SimpleCalc
//
//  Created by MyungJin Eun on 4/6/16.
//  Copyright © 2016 MyungJin Eun. All rights reserved.

import Foundation

print("Enter an expression separated by returns:")

var input = readLine(stripNewline: true)!
var inputArray = input.componentsSeparatedByString(" ")
var operation = ""
if inputArray.count == 1 {
    operation = readLine(stripNewline: true)!
    let input1 = Int.init(input)!
    let input2 = Int.init(readLine(stripNewline: true)!)!
    switch operation {
    case "add":
        print(input1 + input2)
    case "sub":
        print(input1 - input2)
    case "mul":
        print(input1 * input2)
    case "div":
        print(input1 / input2)
    case "mod":
        print(input1 % input2)
    default:
        print("Invalid Input!")
    }
} else {
    operation = inputArray[inputArray.count - 1]
    inputArray.removeLast()
    var index: Int = 0
    switch operation {
        case "count":
            print(inputArray.count)
        case "avg":
            var sum: Int = 0
            while index < inputArray.count {
                sum += Int.init(inputArray[index])!
                index += 1
            }
            print(sum / inputArray.count)
        case "fact":
            if (inputArray.count == 1) {
                var num = Int.init(inputArray[0])!
                var result = num
                while num - 1 > 1 {
                    num -= 1
                    result *= num
                }
                print(result)
            } else {
                print("Only one integer input is allowed")
            }
        default:
            print("Invalid Input!")
    }
}
