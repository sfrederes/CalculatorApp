//
//  CalculatorBrain.swift
//  Caclulator
//
//  Created by Sam Frederes on 7/17/17.
//  Copyright © 2017 Sam Frederes. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    private var accumilator: Double?
    
    
    
    public enum Operation{
        case constant(Double)
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double,Double) -> Double)
        case equals
    }
    
    public var Operations: Dictionary<String,Operation> =
    [
        "π" : Operation.constant(Double.pi),
        "e" : Operation.constant(M_E),
        "√" : Operation.unaryOperation(sqrt),
        "cos" : Operation.unaryOperation(cos),
        "±" : Operation.unaryOperation({-$0}),
        "×" : Operation.binaryOperation({$0 * $1}),
        "+" : Operation.binaryOperation({$0 + $1}),
        "-" : Operation.binaryOperation({$0 - $1}),
        "÷" : Operation.binaryOperation({$0 / $1}),
        "=" : Operation.equals
    ]
    mutating func performOperation(_ symbol: String){
        if let operation = Operations[symbol] {
            switch operation{
            case .constant(let value):
                accumilator = value
            case .unaryOperation(let function):
                if accumilator != nil {
                accumilator = function(accumilator!)
                }
            case .binaryOperation(let function):
                if accumilator != nil{
                    pendingBinaryOperation = PendingBinaryOperation(function: function, firstOperand: accumilator!)
                    accumilator = nil
                }
            case .equals:
                performPendingBinaryOperation()
            }
        }
    }
    
    private var pendingBinaryOperation: PendingBinaryOperation?
    
    mutating private func performPendingBinaryOperation() {
        if pendingBinaryOperation != nil && accumilator != nil{
        accumilator = pendingBinaryOperation?.perform(with: accumilator!)
            pendingBinaryOperation = nil
        }
    }
    
    private struct PendingBinaryOperation {
        let function : (Double, Double) -> (Double)
        let firstOperand : Double
        
        func perform(with secondOperand: Double) -> Double{
            return function(firstOperand,secondOperand)
        }
    }
        
    mutating func setOperand(_ operand: Double){
        accumilator = operand
    }
    
    var result: Double?{
        get{
           return accumilator
        }
    }
}
