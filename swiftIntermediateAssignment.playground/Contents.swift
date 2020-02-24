import UIKit

//Question 1.
//
//Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an array of strings) and “sifts out” the beans from the other groceries. The function should take one argument that has a parameter name called list, and it should return a named tuple of the type (beans: [String], otherGroceries: [String]).


func siftBeans(fromGroceryList : [String]) -> (beans : [String], otherGroceries : [String]) {
    var beans : [String] = []
    var otherGroceries : [String] = []
    for index in fromGroceryList {
        if index.contains("beans") {
            beans.append(index)
        }
        else{
            otherGroceries.append(index)
        }
    }
    
    return (beans, otherGroceries)
}

let resultedBeans = siftBeans(fromGroceryList: ["green beans","milk","black beans","pinto beans","apples"])
resultedBeans.beans == ["green beans", "black beans", "pinto beans"]


//Question 2 -
//Make a calculator class with a function name “equals” that take an enum case as value like multiply, subtraction, addition, square root, division.


class CalculatorExample{
    enum Calculation {
        case add(Int, Int)
        case sub(Int, Int)
        case mult(Int, Int)
        case div(Int, Int)
        case sqrt(Int)
    }
func equals(enumArg : Calculation) -> Int {
        switch enumArg {
        case .add(let x, let y):
            return x + y
        case .sub(let x, let y):
            return x - y
        case .mult(let x, let y):
            return x * y
        case .div(let x, let y):
            return x / y
        case .sqrt(let x):
            return x*x
        }
    }
    
}
var obj = CalculatorExample()

let a = obj.equals(enumArg: .add(100,2))
let b = obj.equals(enumArg: .sub(10,20))
let c = obj.equals(enumArg: .mult(34,2))
let d = obj.equals(enumArg: .div(56,2))
let e = obj.equals(enumArg: .sqrt(10))


//Question 3 -
//
//Make the same calculator using functions as an argument, define all type functions in a struct.


struct calculatorExample2 {
    func add2(x : Int, y : Int) -> Int {
        return x + y
    }
    func sub2(x : Int, y : Int) -> Int {
        return x - y
    }
    func mult2(x : Int, y : Int) -> Int {
        return x * y
    }
    func div2(x: Int, y : Int) -> Int {
        return x / y
    }
static func equalsto(funcArg : (Int, Int) -> Int, var1 : Int, var2 : Int) -> Int {
        let value = funcArg(var1, var2)
        return value
    }
}
var obj2 = calculatorExample2()

calculatorExample2.equalsto(funcArg: obj2.add2(x:y:),var1: 5,var2: 2)
calculatorExample2.equalsto(funcArg: obj2.sub2(x:y:),var1: 45,var2: 2)
calculatorExample2.equalsto(funcArg: obj2.mult2(x:y:),var1: 25,var2: 2)
calculatorExample2.equalsto(funcArg: obj2.div2(x:y:),var1: 50,var2: 2)


