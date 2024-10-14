import UIKit

protocol Car {
    var upgrades: [String] {get}
    var price: Int {get}
}

protocol CarDecorator: Car {
    var car: Car {get}
}


struct BaseCar: Car {
    
    var upgrades: [String] = ["Engine"]
    var price: Int = 10000
}


//Decoratorts

struct BaseWheels: CarDecorator {
    var car: any Car
    
    var upgrades: [String]{
        car.upgrades + ["Base wheels"]
    }
    
    var price: Int {
        car.price + 1000
    }

}

struct SportWheels: CarDecorator {
    var car: any Car
    
    var upgrades: [String]{
        car.upgrades + ["Sport wheels"]
    }
    
    var price: Int {
        car.price + 2000
    }

}

struct BaseSuspension: CarDecorator {
    var car: any Car
    
    var upgrades: [String]{
        car.upgrades + ["Base Suspension"]
    }
    
    var price: Int {
        car.price + 10000
    }

}

struct SportSuspension: CarDecorator {
    var car: any Car
    
    var upgrades: [String]{
        car.upgrades + ["Sport Suspension"]
    }
    
    var price: Int {
        car.price + 20000
    }
}


var baseCar = BaseCar()

var carWithUpgradedWheels = BaseWheels(car: baseCar)
print(carWithUpgradedWheels.price)
var carWithUpgradedSuspension = SportSuspension(car: carWithUpgradedWheels)
print(carWithUpgradedSuspension.price)
