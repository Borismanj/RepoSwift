import Foundation

enum Engine {
    case on, off
}

enum Window {
    case open, close
}

enum Loaded {
    case full, empty
}

//Легковой
struct Car {
    var brand: String
    var year: String
    var trunk: Int
    var engine: Engine
    var window: Window
    var loaded: Loaded
    
    func drive1() {
        print("Status: Availible")
    }
}

var sedan = Car(brand: "Kia", year: "2000", trunk: 100, engine: .off, window: .close, loaded: .full)
print("Model: \(sedan.brand) - Year: \(sedan.year) - Engine: \(sedan.engine) - Windows: \(sedan.window)")
sedan.drive1()


//Грузовик
struct Truck {
    var brand: String
    var year: String
    var trunk: Int {
        didSet {
           print("Trunk load in \(trunk) %")
        }
    }
    
    func drive() {
        print("Status: In transit")
    }

    mutating func renew(year: String) {
        self.year = year
    }
    
    init(brand: String, year: String, trunk: Int) {
        self.brand = brand
        self.year = year
        self.trunk = trunk
        
        }
    }

var van = Truck(brand: "Dodge", year: "2015", trunk: 100)
print("Model: \(van.brand) - Year: \(van.year) - Trunk vol.: \(van.trunk)")


//вписываем уровень загрузки багажника в %
van.trunk = 50
print(van.trunk)
van.drive()

//let van = Truck(brand: "Dodge", year: "2015", trunk: 1000, engine: .off, window: .close, loaded: .full)
//let sedan = Car(brand: "Kia", year: "2000", trunk: 300, engine: .off, window: .close, loaded: .full)

/*func engineStatus() {
    Engine = .on
}
print(engineStatus())
*/
