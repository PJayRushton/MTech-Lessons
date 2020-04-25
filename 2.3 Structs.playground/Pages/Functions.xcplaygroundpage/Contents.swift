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

//: Use **MEMBER-WISE** or **INSTANCE** functions to perform operations on an INSTANCE of a struct
parker.displayName()


//: ## Mutability
//: Structs are meant to be immutable (Not changing)

//: Here's a School struct. What happens when I create a Pedometer INSTANCE and then I take a step. What should happen?

struct School {
    var students: Int
    
    mutating func addNewStudent() {
        students += 1
    }
    
    func displayNumberOfStudents() {
        print("We currently have \(students) students")
    }
    
}
//: We must mark a function as `mutating` or (changing) to indicate that this function changes the value of a struct's property

//: **Challenge** display the number of students, then enroll a new student, then display the new number of students

//: You're now ready for Lab questions 3-6

//: [Next Page (Computed Properties)](@next)









var provoHigh = School(students: 1000)
provoHigh.displayNumberOfStudents()
provoHigh.addNewStudent()
provoHigh.displayNumberOfStudents()
