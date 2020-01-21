//: # Structs

//: ## Structs are a way to group/organize data together
//: Define a struct with the `struct` keyword

//: Struct definitions are always uppercase followed by open close curly braces

struct Person {
    
}
//: They can contain any number of properties
struct Book {
    let pages: Int
    let title: String
    let author: String
}
//: They can contain any number of functions
struct Car {
    let make: String
    let model: String
    
    func startEngine() {
    }
    
    func accelerate(to speed: Int) {
    }
    
    func decelerate() {
    }
}

//: Instances

//: [Next](@next)
