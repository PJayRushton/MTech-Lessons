import Foundation

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
//print(thisIsLocal)






//: What about this scenario?
var count = 100

func increaseCount() {
    count += 1
}
//: What if I uncomment this line?
print(count)

//: What about inside a function?

var numberOfTimes = 8
func doSomeMath() {
    var x = 0
    for y in 0...numberOfTimes {
        let index = 12
        let w = index * y
        x = w
    }
    print(numberOfTimes)
}
//: What would happen if I uncommented 46?

//: [Next](@next)
