//
//  main.swift
//  simpleCalc
//
//  Created by iGuest on 4/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

let input1 = readLine(stripNewline: true)!
var inputArray = input1.componentsSeparatedByString(" ")
var operation = ""
if inputArray.count == 1 {
    operation = readLine(stripNewline: true)!
    let input2 = readLine(stripNewline: true)!
    var result = 0
    switch operation {
        case "+":
            print("result: \(input1 + input2)")
        case "-":
            print("result: \(input1 - input2)")
        case "*":
            print("result: \(input1 * input2)")
        case "/":
            print("result: \(input1 / input2)")
        default:
            print("Meh")
    }

} else {
    operation = inputArray[inputArray.count - 1]
    inputArray.removeLast()
}

switch operation {
    case "+":
        result =
}


