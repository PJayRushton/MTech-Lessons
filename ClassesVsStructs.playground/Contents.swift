import UIKit

struct Dog {
    var height: Int
    var weight: Int
    var hairColor: String
    var name: String
}
var myDog = Dog (height: 58, weight: 20, hairColor: "purple", name: "bolt")
class boat {
    var capacity: Int
    var type: String
    var color: String
    var engine: Int
    init(capacity:Int, type: String, color: String, engine: Int) {
        self.capacity = capacity
        self.type = type
        self.color = color
        self.engine = engine
            
        }
 func startBoat() {
print("vroom vroom")
    }
}
var myBoat = boat(capacity: 20, type: "speedBoat", color: "green", engine: 7)
