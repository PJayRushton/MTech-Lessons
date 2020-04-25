//: [Previous](@previous)
//: # Arithmetic Operators (Basic Math (+, -, *, /)
//: ## Type Casting
//: What if the numbers you want to divide don't divide evenly?
//: Like if you had only 11 cookies and 4 guests?

let numberOfCookies = 11
let numberOfGuests = 4
let cookiesPerGuest = numberOfCookies / numberOfGuests

//: What is the type of these properties? ^

//: Cast them to be of type Double to get decimal precision
let numberOfCookiesDouble = 11.0
let numberOfGuestsDouble: Double = 4
let realCookiesPerGuest = numberOfCookiesDouble / numberOfGuestsDouble


//: ## You can only perform arithmetic on things of the same type
let thisIsADouble = 2.5
let thisIsAnInt = 10

//let thisWontWork = thisIsADouble * thisIsAnInt
// Binary operator `*` cannot be applied to operands of type `Double` and `Int`

let doubleAnswer = thisIsADouble * Double(thisIsAnInt)

//: [Next](@next)
