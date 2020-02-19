import UIKit

func multiply(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

let result = multiply(firstNumber: 3, secondNumber: 5)
print(result)

func myName(firstName: String, secondName: String) -> String {
    return "Hello my name is \(firstName) \(secondName)"
}

let statement = myName(firstName: "Jorge", secondName: "Arechiga")


func makeCar(make: String = "Toyota", model: String = "Tacoma", doors: Int = 4) -> String {
    return make + model + String(doors)
}

let newCar = makeCar(make: "Toyota", model: "Camry")
let newToyota = makeCar(model: "Tacoma")
let tacoma = makeCar()  

func jsonDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
//    decoder.dateDecodingStrategy
    return decoder
}


var ISO8601SecondFormatter: ISO8601DateFormatter = {
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withInternetDateTime]
    return formatter
}()

var ISO8601SecondFormatter2: ISO8601DateFormatter = {
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
    return formatter
}()

var ISO8601SecondFormatter3: ISO8601DateFormatter = {
    let formatter = ISO8601DateFormatter()
//    formatter.timeZone = TimeZone.current
    formatter.formatOptions = [.withYear, .withMonth, .withDay, .withDashSeparatorInDate]
    return formatter
}()

let first = "2020-01-22T01:33:10"
let second = "2020-01-22T01:33:10Z"
let third = "2020-01-23T06:55:45.834766Z"
let fourth = "2019-10-22"
let now = Date()


ISO8601SecondFormatter.date(from: fourth)


let test = "2020-01-22T01:33:10-0700"
let date = ISO8601SecondFormatter.date(from: test)!
let seconds = date.timeIntervalSinceReferenceDate

let size = "30px"
let sizeStripped = size.trimmingCharacters(in: .letters)
let int = Int(sizeStripped)
