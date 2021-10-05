import Foundation

struct Car {
    static let wheelCount = 4

    // variables
    let name: String
    let brand: String
    let producedYear: Int
    var color: String
    var speed = 0.0

    // methods
    func run() {
        print("The car is running")
    }

    mutating func accelerate(speed: Double) {
        self.speed = speed
    }

    mutating func slowDown(speed: Double) {
        self.speed -= speed
    }

    mutating func paint(color: String) {
        self.color = color
    }

}

var myCar = Car(name: "myCar", brand: "Toyota", producedYear: 2015, color: "Navy") 
myCar.pain("Yellow")


class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func bark(sound: String) {
        print(sound)
    }
}



/* [ Lesson ]
1. Protocol : It seems like similar to the "Interface"
    1. A way to require that our types implement certain behavior or properties
        eg) Identifiable
    2. Doesn't need to provide default behavior, but it can
        eg) func printId() -> Void on Identifiable
    3. A protocol can extend another protocol.
    4. Struct can kinda inherit protocol.
        struct Hello: Identifiable, something something {
            ...
        }
*/

protocol Identifiable {
    var id: String { get }
}

struct Person: Identifiable {
    var id: String = UUID().uuidString // Universally unique ID

    let name: String
}

let id: Identifiable = Person(name: "Rohan")
id.id // you can't find id.name

let id2: Person = Person(name: "Han")
id.name // you can do id.name


protocol Dog {
    func bark() -> Void
}

struct Poodle: Identifiable, Dog {
    var id: String = UUID().uuidString

    let name: String
    
    func bark() {
        print("Miaw")
    }
}

/*
2. Extensions
    1. A way for us to add behavior or properties to pre-existing types
    2. You can extend anything such as class or struct
*/

extension Int {
    func squared() -> Int {
        return self * self
    }

    func toString() -> String {
        return "\(self)"
    }
}

let myInt = 5
// you added new functions to Int.
print(myInt.squared()) 
print(type(of: myInt.toString()))


/*
3. Optionals
    1. Neat way to ensure that data exists when we expect it to
    2. Not required in other languages like Java
*/

// In Java
/*
class Person {
    String name;

    // if name is null, it might generate some null exception
    Person(String name) {
        self.name = name;
    }
}
*/

// In Swift

var name: String? = "Ron"
name = nil

let names = ["Ron", "Vint", "Swan"]
// we don't know if the first is null or not.
let firstPerson = names.first 

print(type(of: firstPerson))


