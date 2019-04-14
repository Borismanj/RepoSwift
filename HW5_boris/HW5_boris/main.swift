import Foundation


protocol TurnOnOff {
    func button()
}

class Engine: TurnOnOff {
    func StartStop() { }
    
    func button() {
        
    }
}

class Windows: TurnOnOff {
    func WindowOpen() { }
    
    func button() {
        
    }
}

class Alarm: TurnOnOff {
    func AlarmSet() { }
    
    func button() {
        
    }
}

class Car {
    var brand: String
    var year: String
    var trunk: Int {
        didSet {
            print("Trunk load in \(trunk) %")
        }
    }
    var navi: Bool = false
    func setNavi() {
        self.navi = true
    }
    
    
    func statusVechicle() {
        print("Status: Vechicle is ready")
    }
    
    init(brand: String, year: String, trunk: Int) {
        self.brand = brand
        self.year = year
        self.trunk = trunk
        
}

class trunkCar: Car {
    let engine = Engine()
    let windows = Windows()
    let alarm = Alarm()
    func naviOff() {
        print("Navigation is not available")
    }
    
    func naviOn(navi: Bool) {
        if navi {
            print("Navigation installed")
        } else {
            naviOff()
        }
    
var switchesObjects: [TurnOnOff] {
    get {
    return [engine,windows,alarm]
        }
    }
    func switchObjects() {
        for object in switchesObjects {
            object.button()
            }
    }
        
class sportCar: Car {
    let engine = Engine()
    let windows = Windows()
    let alarm = Alarm()
    
            
var switchesObjects: [TurnOnOff] {
    get {
    return [engine,windows,alarm]
        }
    }
    func switchObjects() {
        for object in switchesObjects {
            object.button()
        }
    }
}
}
}
}
let speedCar = Car (brand: "VW", year: "2012", trunk: 100)
print("Model: \(speedCar.brand) - Year: \(speedCar.year) - Trunk vol.: \(speedCar.trunk)")
speedCar.trunk = 25



