import Foundation

print("TRUCKS AT SERVICE")
//Грузовик

class Truck {
    var brand: String
    var year: String
    var trunk: Int {
        didSet {
            print("Trunk load in \(trunk) %")
        }
    }
    
    func drive() {
        print("Status: READY FOR USE")
    }
    
    static var  count = 0
    static func counter() {
        print(count)
    }
    
    init(brand: String, year: String, trunk: Int) {
        self.brand = brand
        self.year = year
        self.trunk = trunk
        Truck.count += 1
    }
    func drive2() {
        print("Status: Ready")
    }
    
    func drive3(camper: Bool) {
        if camper {
            print("Camper installed")
        } else {
            drive2()
        }
    }
    
}

class HardTruck : Truck {
    var camper: Bool = false
    
    func setCamper() {
        self.camper = true
    }
}

class OffroadTruck: Truck {
    var mudtires: Int = 0
    
    func addTires(mudtires: Int) {
        self.mudtires = mudtires
    }
    override func drive() {
        print("Tire service")
    }
}

var service: [Truck] = [Truck]()

let hardTruck = HardTruck(brand: "MAN", year: "2015", trunk: 100)
print("Model: \(hardTruck.brand) - Year: \(hardTruck.year) - Trunk vol.: \(hardTruck.trunk)")
hardTruck.trunk = 25
print(hardTruck.trunk)
print("ADDITIONAL:")
hardTruck.drive3(camper: true)

let offroadTruck = OffroadTruck(brand: "DUF", year: "2018", trunk: 100)
print("Model: \(offroadTruck.brand) - Year: \(offroadTruck.year) - Trunk vol.: \(offroadTruck.trunk)")
offroadTruck.trunk = 50
print(offroadTruck.trunk)
print("ADDITIONAL:")
offroadTruck.drive()

var van = Truck(brand: "Dodge", year: "2015", trunk: 100)
print("Model: \(van.brand) - Year: \(van.year) - Trunk vol.: \(van.trunk)")
van.trunk = 75
print(van.trunk)



service.append(hardTruck)
service.append(offroadTruck)
service.append(van)

for truck in service {
    if truck is HardTruck {
        print("TOTAL TRUCKS AT SERVICE")
        truck.drive()
    }
}
Truck.counter()

usleep(100000)
