import UIKit

//1. What is extension?
// Ans:- Extension is used to extends the functionality of exixting class,structure,enum etc.



//2. Create a class and write the delegate of UITextField in extension of that class.

class makeExtension : UITextField {
    
}

extension makeExtension : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#Code#>
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        <#code#>
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        <#code#>
    }
}


//3. Write a protocol and create an extension of the protocol. In extension create a function
//
//     func sayHello() {
//
//      print(“Hello!”)
//
//}


protocol protocolExample {
}

extension protocolExample {
    func sayHello() {
        print("hello")
    }
}



//4.Write an enum and create an extension of the enum.


enum Level : String{
    case low
    case medium
    case high
}
extension Level{
    var value : String{
        return self.rawValue
    }
    func printTheLevel(){
        switch self {
        case .low:
            print("Low Level")
        case .medium:
            print("medium Level")
        case .high:
            print("High Level")
        }
    }
}
Level.high.printTheLevel()




//5. What is Generic?
//Answer:- Generic code enables you to write flexible, reusable functions and types that can work with any type. It increase the reusablity of code.



//6. Explain generic with an example?


func exchange(x : inout Int, y: inout Int) {
   let temp = x
   x = y
   y = temp
}

var firstNumber = 100
var secondnumber = 200

print("Before Swapping values are: \(firstNumber) and \(secondnumber)")
exchange(x: &firstNumber, y: &secondnumber)
print("After Swapping values are: \(firstNumber) and \(secondnumber)")



//7. Explain the difference between map and compactMap with an example.

let nameArray: [String?] = ["Rahul", nil , "Aman"]
let validNames = nameArray.map{$0}
print(validNames)   //here the map will print the nil value as nil
 
let nameArray1: [String?] = ["Anmol", nil , "Sachin"]
let validNames1 = nameArray1.compactMap{$0}
print(validNames1)          // here the comapct will remove the nil value and will not print the nil value





//8. Write an example of reduce function with initial value 1000.

let number = Array(2...10)

let reducedNumbers = number.reduce(1000, {x, y in
    x + y
})
print(reducedNumbers)



//9. - 2 marks
//
//
//
//  struct Person {
//
//
//
//    var name : String
//
//    var age : Int
//
//
//
//}
//
//let person1 = Person(name: "Sam", age: 23)
//
//let person2 = Person(name: "John", age: 30)
//
//let person3 = Person(name: "Rob", age: 27)
//
//let person4 = Person(name: "Luke", age: 20)
//
//
//
//let personArray = [person1, person2, person3, person4]
//
//
//
//Find all person whose age is more than 25 using filter function.

struct Person{
    var name : String
    var age : Int
}
let person1 = Person(name: "Sam", age: 23)
let person2 = Person(name: "John", age: 30)
let person3 = Person(name: "Rob", age: 27)
let person4 = Person(name: "Luke", age: 20)
 
let personArray = [person1, person2, person3, person4]
var ageGreaterThan = personArray.filter {($0.age > 25) }
print(ageGreaterThan)


//10. Make a property wrapper @nonNegative and use it to make values to 0 if any negative value added to a variable.

@propertyWrapper
struct nonNegativeNumber {
    var number : Int
    init(wrappedValue : Int) {
        self.number = wrappedValue
    }
    var wrappedValue : Int {
        get { number }
        set {
            if newValue < 0 {
                number = 0
            }
            else {
                number = newValue
            }
        }
    }
}

var obj = nonNegativeNumber(wrappedValue: 8)
obj.wrappedValue = -90
print(obj.wrappedValue)
