//: [Previous](@previous)
//: # Structs
//: # Instances

//: Lets look at a person struct again
struct Person {
    var age: Int
    let name: String
    var height: Int
    var weight: Int
    
    func stateName() {
        print("Hi my name is \(name)")
    }
}
//: This acts as blueprint for any person. But what if we want a particular person. Me, or Melissa, or Jean?

//: Well thats where instances come in. We can INITIALIZE an INSTANCE of a person to represent a specific person
var parker = Person(age: 29, name: "Parker", height: 70, weight: 300)
//: Use dot syntax to access specific properties of the instance
let parkersAge = parker.age
print(parkersAge)
//: Access functions the same way
parker.stateName()
//: `Person.age` doesn't work because `Person` is just a blueprint

//: ## Changing property values
//: Instance properties can be changed accessing them through dot syntax and using any type of assignment operator:

//: Lets say I lost a bunch of weight
parker.weight -= 200
print(parker.weight)

//: # LAB 1-2
//: [Next](@next)
