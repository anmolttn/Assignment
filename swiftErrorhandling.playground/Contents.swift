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
            throw playerInfoTwo.initialisationFailed
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


/*
 Question 4:

 Write a program which loads the data from a datasource of 10 employees looks like below, Program would help to give salary bonus to employees. Which is based on some conditions but if employee is not able to satisfy the condition program should throw the error with specific error condition and its description should be printed.

  

 Conditions -

 Employee should be present on the day.

 Employee has completed a year with company

 Employee competency should be hot competency like ios, android, bigdata, AI etc. ( make some placeholder competency which would not get bonus )

 Employee should have a attendance percent over 80.

 Emp -

 empID

 empName

 empEmail

 joiningDate

 isPresent

 competency

 attendancePercent

  

 Test Run:

 let bonusProgram = BonusProgram()

 bonusProgram.allowedForBonus("muskaan@tothenew.com")

 bonusProgram.allowedForBonus("mithlesh@tothenew.com")

 bonusProgram.allowedForBonus("ankit@tothenew.com")

 bonusProgram.allowedForBonus("sachin@tothenew.com")

 bonusProgram.allowedForBonus("Merry@tothenew.com")

 .... few more run-

 // prints

 Muskaan is absent today.

 Mithlesh competency does not fall under bonus program.

 ankit is eligible for bonus.

 sachin has joined us on dd/mm/yyyy and still to complete a year with us.

 Merry is eligible for bonus.
 */

import UIKit

struct EmpPersonalInfo {
    var empID : Int
    var empName : String
    var empEmail: String
    var joiningDate = Date()
    var isPresent : String
    var competency: String
    var attendancePercent : Int
}

var empObj : [EmpPersonalInfo] = [EmpPersonalInfo(empID: 1, empName: "Sachin", empEmail: "sachin@tothenew", joiningDate: Date(timeInterval: -86400*45, since: Date()), isPresent: "Yes", competency: "ios", attendancePercent: 98),
EmpPersonalInfo(empID: 2, empName: "Muskan", empEmail: "muskan@tothenew", joiningDate: Date(timeInterval: -86400*500, since: Date()), isPresent: "Yes", competency: "ios", attendancePercent: 94),
EmpPersonalInfo(empID: 3, empName: "Mithilesh", empEmail: "mithilesh@tothenew", joiningDate: Date(timeInterval: -86400*400, since: Date()), isPresent: "Yes", competency: "FEEN", attendancePercent: 94),
EmpPersonalInfo(empID: 4, empName: "Ankit", empEmail: "ankit@tothenew", joiningDate: Date(timeInterval: -86400*550, since: Date()), isPresent: "Yes", competency: "ios", attendancePercent: 95),
EmpPersonalInfo(empID: 5, empName: "Marry", empEmail: "merry@tothenew", joiningDate: Date(timeInterval: -86400*600, since: Date()), isPresent: "Yes", competency: "ios", attendancePercent: 94)]


enum employeeError : Error{
    case absent
    case competency
    case joiningDate
    case alllow
}

class BonusCheck{
    
    func allowedForBonus(email : String) -> String{
        
        var answer : String = ""
        var emp : EmpPersonalInfo
        
        for index in empObj{
            
            let bonus = BonusCheck()
            
            if email == index.empEmail{
                
                emp.self = index.self
                  if emp.isPresent == "No"
                  {
                    //print(index.empEmail)
                    let prb : employeeError = employeeError.absent
                      answer = bonus.bonusFunctiuon(arg: prb, emp: emp)
                  }
                  else if emp.competency != "ios"
                  {
                      let prb : employeeError = employeeError.competency
                      answer = bonus.bonusFunctiuon(arg: prb, emp: emp)
                  }
                else if emp.joiningDate >= Date(timeInterval: -86400*365, since: Date())
                  {
                     // print(emp.joiningDate)
                      let prb : employeeError = employeeError.joiningDate
                      answer = bonus.bonusFunctiuon(arg: prb, emp: emp)
                  }
                  else
                  {
                      let prb : employeeError = employeeError.alllow
                      answer = bonus.bonusFunctiuon(arg: prb, emp: emp)
                  }
            }
            }
            return answer
        }
       func bonusFunctiuon (arg : employeeError , emp: EmpPersonalInfo) -> String
       {
           switch arg{
           case .joiningDate:
               return ("\(emp.empName) has joined us on \(emp.joiningDate) and is still to complete one year")
           case .absent:
               return ("\(emp.empName) is absent today")
           case .competency:
               return ("\(emp.empName) competency does not fall under the bonus program")
           case .alllow:
               return ("\(emp.empName) is eligible for bonus")
           }
       }
    }
var bonusProgram = BonusCheck()
print(bonusProgram.allowedForBonus(email: "muskan@tothenew"))
print(bonusProgram.allowedForBonus(email: "mithilesh@tothenew"))
print(bonusProgram.allowedForBonus(email: "ankit@tothenew"))
print(bonusProgram.allowedForBonus(email: "sachin@tothenew"))
print(bonusProgram.allowedForBonus(email: "merry@tothenew"))
