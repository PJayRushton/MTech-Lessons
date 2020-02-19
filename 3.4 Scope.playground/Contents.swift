import UIKit

//: # Variable/Constant Scope

//: ## Global Scope
//: A variable/constant that is defined outside a function

var thisIsGlobal = 12

//: ## Local Scope
//: A variable/constant that is defined within { }

func sumOfLocalAndGlobal() -> Int {
    let thisIsLocal = 8
    return thisIsLocal + thisIsGlobal
}
let firstSum = sumOfLocalAndGlobal()

//: What will happen if I uncomment this line? Why?
//let newLocal = thisIsLocal


