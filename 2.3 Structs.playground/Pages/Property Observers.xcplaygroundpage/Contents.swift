//: [Previous](@previous)
//: # Structs
//: # Properties Observers

//: Property observers allow you to listen to changes to a property

//: Has anyone seen the movie Speed?

//: We want notifications about if the bus is getting dangerously slow to trigger the bomb

//: Property Observers use the curly braces but have new keywords `willSet` and `didSet`

//: Guess when they occur?

//: `willSet` -> `newValue`

//: `didSet` -> `oldValue`

struct SpeedBus {
    
    var speed: Int {
        willSet {
            print("You're currently going \(speed)mph")
            print("But you're trying to go \(newValue)mph")
            if speed > 60 && newValue == 60 {
                print("BE CAREFUL!!⚠️")
            }
        }
        didSet {
            print("Now you're going \(speed)")
            if oldValue >= 60 && speed < 60 {
                print("You DED 💣 💥 ☠️")
            }
        }
    }
    
    mutating func slowDown() {
        speed -= 1
    }
    
    mutating func speedUp() {
        speed += 1
    }
    
}
//: Make the bus explode

var bus = SpeedBus(speed: 60)
bus.speedUp()
bus.slowDown()
bus.slowDown()

//: [Next](@next)
