//
//  main.swift
//  SimpleCalc
//
//  Created by Sabrina Niklaus on 3/30/17.
//  Copyright © 2017 Sabrina Niklaus. All rights reserved.
//

import Foundation

var firstArg = 0
var secondArg = 0
var array : [String] = []
var completed = false;
var operand = false;

print("Enter an expression separated by returns:")

var firstInput = readLine(strippingNewline: true)!
array.append(firstInput)

var secondInput = readLine(strippingNewline: true)!

switch secondInput {
case "+", "-", "*", "/", "%":
    var number = Int.init(firstInput)!
    firstArg = number;
    operand = true;
case "count":
    print(array.count)
    completed = true
case "avg":
    print(firstInput)
    completed = true
case "fact":
    var fact : Int = 1;
    var input1 = Int.init(firstInput)!
    
    if input1 > 0 {
        for index in 1 ... input1 {
            fact *= index
        }
    }
    if input1 == 0 {
        fact = 1
    }
    
    if input1 < 0 {
        fact = -1
        print("Factorials cannot be negative")
    }
    completed = true
    print(fact)
default:
    array.append(secondInput)
}

if operand {
    var number2 = readLine(strippingNewline: true)!
    var int2 = Int.init(number2)!
    switch secondInput {
    case "+":
        print("Result: \(firstArg + int2)")
        completed = true
    case "-":
        print("Result: \(firstArg - int2)")
        completed = true
    case "*":
        print("Result: \(firstArg * int2)")
        completed = true
    case "/":
        print("Result: \(firstArg / int2)")
        completed = true
    case "%":
        print("Result: \(firstArg % int2)")
        completed = true
    default:
        print("Input is invalid")
    }
}

while !completed {
    var nextInput = readLine(strippingNewline: true)!
    switch nextInput {
    case "count":
        print("Result: \(array.count)")
        completed = true;
    case "avg":
        var sum: Double = 0
        for number in array {
            var number2 = Double.init(number)!
            sum += number2
        }
        print("Result: \(sum / Double(array.count))")
        completed = true;
    case "fact":
        print("Only one number can be entered for factorial")
        completed = true;
    default:
        array.append(nextInput)
    }
}


