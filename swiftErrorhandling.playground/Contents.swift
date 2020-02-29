import UIKit


//Question 1:
//
//What is Error Protocol. Create a custom error conforming to error protocol.
//Ans: In Swift, errors are represented by values of types that conform to the Error protocol. This empty protocol indicates that a type can be used for error handling.
enum playername : Error {
    case name
    case firstName
    case lastName
    
}


//Write a failable initialiser for a class which throws a error  “Object not able to initialise” description a initialisationFailed case, Catch the error and print its error description.

enum playerInfo : Error {
    case initialisationFailed
}

class playerClass {
    var playerName: String?
    
    init?(playerNameOne : String?) throws {
        
        if playerNameOne!.isEmpty {
            throw playerInfo.initialisationFailed
        } else {
        self.playerName = playerNameOne
        }
    }
    
}



do {
    try playerClass(playerNameOne: "")
} catch playerInfo.initialisationFailed {
    print("Object Not Initialized")
}
//
//Question 3:
//
//Explain the difference try, try?, try! , make sure to write a program to explain the difference.
//Ans:
// When using try, our throw function has to be wrapped in a do-catch statement. This allows us to customize our error handling and perform specific actions based on the error.

enum playerInfoTwo : Error {
    case initialisationFailed
}

class playerClassTwo {
    var playerName: String?
    init?(playerNameTwo : String?) throws {
        
        if playerNameTwo!.isEmpty {
            throw playerInfo.initialisationFailed
        } else {
        self.playerName = playerNameTwo
        }
    }
    
}
do {
    try playerClassTwo(playerNameTwo: "")
} catch playerInfoTwo.initialisationFailed {
    print("Object Not Initialized")
}
// try? ignore our error and allow them to become nil whenever our function throws them.We do not have to wrap our code in a do-catch statement
 var obj2 = try? playerClassTwo(playerNameTwo: "")
//try! is used when we know there is no possible way our method will fail, or if this line of code is so fundamental that our whole app might as well crash if there is in fact an error
var obj3 = try! playerClassTwo(playerNameTwo: "Anmol")

