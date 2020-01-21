//: [Previous](@previous)
//: # Structs
//: # Computed Properties

//: Computed properties are like functions with no inputs
 
//: Lets create a Dog struct. Give it 2 properties, breed, and age

//: What if we wanted to know how old it is in human years?

//: We could use a function but it will always be the same input, the dog's age. So we could instead use a computed property to calculate the answer.

//: Computed properties are always vars but are then followed by curly braces (Like functions)

//: They can be accessed just like properties

//: It looks like this:
struct Dog {
    let breed: String
    var age: Int
    
    var humanYears: Int {
        return age * 7 // Studies show this is not an accurate calculation of dog age, but we'll use it for this example
    }
}

let beethoven = Dog(breed: "Saint Bernard", age: 5)
print(beethoven.age)
print(beethoven.humanYears)
//: [Next](@next)
