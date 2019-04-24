
import Foundation

enum GasolineStationError : Error {
    case noChosenPetrol
    case emptyStorage
    case notEnoughMoney
}


struct Azs {
    var price: Int
    var storage: Int
    let petrol: Petrol
}

struct Petrol {
    let name: String
}

class GasolineStation {

    var inventory = [
        "AI92": Azs(price: 41, storage: 200, petrol: Petrol(name: "AI92")), //dictionary keyword
        "AI95": Azs(price: 45, storage: 300, petrol: Petrol(name: "AI95")),
        "AI98": Azs(price: 49, storage: 100, petrol: Petrol(name: "AI98"))
    ]
    
    var cashDeposit = 0
    
    func azs(AzsNamed name: String) throws -> Petrol {          //функция может инициировать ошибку
        guard let gas = inventory[name] else {                  //отработка элемента по имени из ключ-значение
            throw GasolineStationError.noChosenPetrol           //выбрасывает конкретный кесй ошибки
        }
        
        guard gas.storage > 0 else {                            //проверка остатков топлива
            throw GasolineStationError.emptyStorage
        }
        
        guard gas.price <= cashDeposit else {                   //недостаточно средств
            throw GasolineStationError.notEnoughMoney
        }
        
        cashDeposit -= gas.price
        var newGas = gas
        newGas.storage -= 1
        inventory[name] = newGas
        print("hello \(name)")
        return newGas.petrol
        
    }
}

let gasolineStation = GasolineStation()
gasolineStation.cashDeposit += 1500
//print(gasolineStation.azs(AzsNamed: "AI93"))

do {                                                             //перехват исключений
    let result = try gasolineStation.azs(AzsNamed: "AI8")
    print("continue")
} catch GasolineStationError.noChosenPetrol {
    print("no Chosen Petrol")
} catch GasolineStationError.emptyStorage {
    print("empty Storage")
} catch GasolineStationError.notEnoughMoney {
    print("not Enough Money")
} catch {
    print("error")
}


