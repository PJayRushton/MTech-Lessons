//: [Previous](@previous)
//: # Structs
//: # Instances

//: Lets look at a person struct again
struct Person {
    let age: Int
    let name: String
    let height: Int
    let weight: Int
    
    func stateName() {
        print("Hi my name is \(name)")
    }
}
//: This acts as blueprint for any person. But what if we want a particular person. Me, or Melissa, or Jean?

//: Well thats where instances come in. We can INITIALIZE an INSTANCE of a person to represent a specific person
let parker = Person(age: 29, name: "Parker", height: 70, weight: 300)
//: Use dot syntax to access specific properties of the instance
let parkersAge = parker.age
print(parkersAge)
//: Access functions the same way
parker.stateName()
//: `Person.age` doesn't work because `Person` is just a blueprint

//: [Next](@next)
