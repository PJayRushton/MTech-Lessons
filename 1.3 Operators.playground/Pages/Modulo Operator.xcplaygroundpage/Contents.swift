//: [Previous](@previous)

//: # Modulo Operator (%)

//: Modulo operator is used to calculate the REMAINDER after division

var numberOfCookies = 12
let numberOfGuests = 4
let cookiesPerGuest = numberOfCookies / numberOfGuests
//: Each guest gets 3 cookies

//: What if there are only 11 cookies?
numberOfCookies -= 1 // 11
let newCookiesPerGuest = numberOfCookies / numberOfGuests
//: What about the other 3 cookies?

//: Use the modulo operator to figure out whats left
let remainder = numberOfCookies % numberOfGuests

//: How would I use the modulo operator to figure out if a big number is divisible by 3?
let bigNumber = 0983274059823094876
let bigRemainder = bigNumber % 3
let isDivisibleBy3 = bigRemainder == 0
//: [Next](@next)
