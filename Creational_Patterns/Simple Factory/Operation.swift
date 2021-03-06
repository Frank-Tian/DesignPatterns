//
//  Operation.swift
//  Simple Factory
//
//  Created by Tian on 2021/2/24.
//

import Foundation

protocol Operator {
    var operand1: Double { get set }
    var operand2: Double { get set }
    func getResult() -> Double;
}

class MyOperator : Operator {
    var operand1: Double = 0.0
    var operand2: Double = 0.0
    
    func getResult() -> Double {
        return 0.0
    }
}

class Addition: MyOperator {
    override func getResult() -> Double {
        return operand1 + operand2
    }
}

class Subtraction: MyOperator {
    override func getResult() -> Double {
        return operand1 - operand2
    }
}

class Multiplication: MyOperator {
    override func getResult() -> Double {
        return operand1 * operand2
    }
}

class Division: MyOperator {
    override func getResult() -> Double {
        return operand1 / operand2
    }
}

class Cube: MyOperator {
    override func getResult() -> Double {
        return pow(operand1, 3)
    }
}

class OperatorFactory {
    class func creatOperator(_ opt: String) -> Operator {
        var oper: Operator
        switch opt {
        case "+":
            oper = Addition()
        case "-":
            oper = Subtraction()
        case "*":
            oper = Multiplication()
        case "/":
            oper = Division()
        case "3":
            oper = Cube()
        default:
            oper = Addition()
        }
        return oper
    }
}
