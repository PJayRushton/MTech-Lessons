//: [Previous](@previous)
//: # Structs
//: ## Functions

//: Two types of functions, **TYPE** and **INSTANCE** (**MEMBER-WISE**)

//: Use **TYPE** functions on the struct type
struct Person {
    
    let name: String
    static func displayLatinName() {
        print("Homo sapien")
    }
    
    
    func displayName() {
        print("My name is \(name)")
    }
}
Person.displayLatinName()
let parker = Person(name: "Parker")
//parker.displayLatinName()

//: Use **MEMBER-WISE** or **INSTANCE** functions to perform operations on an INSTANCE of a struct
parker.displayName()


//: ## Mutability
//: Structs are meant to be immutable (Not changing)

//: Here's a Pedometer struct. What happens when I create a Pedometer INSTANCE and then I take a step. What should happen?

struct School {
    var students: Int
    
    func addNewStudent() {
//        students += 1
    }
    
    func displayNumberOfStudents() {
        print("We currently have \(students) students")
    }
    
}
//: We must mark a function as `mutating` or (changing) to indicate that this function changes the value of a struct's property

//: ## LAB - 9-10
//: [Next](@next)
