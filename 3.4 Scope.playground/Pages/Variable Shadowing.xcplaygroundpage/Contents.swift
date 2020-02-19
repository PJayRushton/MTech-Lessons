//: [Previous](@previous)

import Foundation

//: # Variable Shadowing
//: Variable Shadowing refers to using the same name for unwrapping an optional variable
let movieSubtitle: String? = nil

if let movieSubtitle = movieSubtitle {
    print(movieSubtitle)
} else {
    print("This movie doesn't have subtitles")
}
//: Works with functions as well
func saveAnimal(_ name: String? = nil, breed: String) {
    if let name = name {
        print("I'm coming to save you \(name)")
    } else {
        print("I'm coming to save you \(breed)")
    }
}
let test = saveAnimal("Fido", breed: "Dog")
let test2 = saveAnimal(breed: "Cat")
//: [Only Two Hard Things](https://martinfowler.com/bliki/TwoHardThings.html)

//: [Next](@next)
