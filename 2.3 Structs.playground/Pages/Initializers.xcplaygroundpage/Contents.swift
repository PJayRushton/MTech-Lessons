//: [Previous](@previous)
//: # Structs
//: ## Initialization
//: How do we create or INITIALIZE a string?
let hello = "Hello"
//: What about an empty String?
let empty = ""
//: But you can also do it like this:
let empty2 = String()
//: Which is just a shortcut to this:
let empty3 = String.init()
//: Which is just an empty initializer (cmd-opt-click)

//: Swift will auto generate an initializer for you

struct Car {
    let make: String
    let model: String
    let year: Int
    let doors: Int = 4
    var speed: Int = 0
}
//: Default Initializer
//let parkersNissanRogue = Car(make: "Nissan", model: "Rogue", year: 2014, doors: 4, speed: 0)
let newCar = Car(make: "Toyota", model: "Camry", year: 2020)
newCar.doors
newCar.speed
//: Assign default values to a struct to make them optional on initialization
//let studentsCar = Car

//: ## Custom Initalizers
//: What if you want to provide a custom way of initialization?
struct Rectangle {
    let width: Int
    let height: Int
    
    init(longSide: Int, shortSide: Int) {
        width = longSide
        height = shortSide
    }
    
    init(squareSide: Int) {
        width = squareSide
        height = squareSide
    }
}
//: Initialize a rectangle
let rectangle1 = Rectangle(longSide: 10, shortSide: 5)
//: Initialize a square
let square = Rectangle(squareSide: 10)

//: [Next Page (Functions)](@next)
