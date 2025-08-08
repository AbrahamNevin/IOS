import Cocoa

//let x = "Nevin"
//var y = "Sejal"
//
//struct Person {
//    var name: String = "Manav"
//}
//
//var myPerson = Person()
//
//// if default values are not given you have to give initalizers
//class vehicle {
//     var name: String = "Car"
//}
//
//let MyVehicle = vehicle()// here we passing through reference so you modify the property
//// on the other hand we cannot do this in struct as it is value type
//MyVehicle.name = "Bike"
//print(MyVehicle.name)
//
//
//class Person1 {
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//    func sayHello() {
//        print(name)
//    }
//}
//
//var person1 = Person1(name:"Nevin")
//person1.sayHello()

// INHERITANCE

// defining base class
class Vehicle {
    var currrentSpeed = 0.0
    var description: String {
        "traveling at \(currrentSpeed) mph)"
    }
    
    func makeNoice() {
        // do nothing as noice is different for all
    }
}
class Bicycle : Vehicle {
    var hasBasket = true
}
class Cycle : Bicycle{
    var numberOfPassengers = 0
}

class Train: Vehicle{
    // override when we have to difine a function that is inn the base class and has the same function names
    // nly computer properties and methods can be overriden
    override func makeNoice() {
        print("choo choo")
    }
}
let train = Train()
train.makeNoice()



class Car: Vehicle {
    
}
let cycle = Cycle()



class Bike {
    var speed: Int
    var engine:String
    
    init(speed:Int, engine: String){
        self.speed = speed
        self.engine = engine
    }
}

var myBike = Bike(speed: 100, engine: "Normal")

class SuperBike: Bike {
    var topSpeed: Int
    init(topSpeed:Int, speed: Int, engine:String){
        self.topSpeed = topSpeed
        super.init(speed: speed , engine:engine)
    }
}

var dugati = SuperBike(topSpeed: 299, speed: 120, engine: "V4")


// class uses ARC automatic refference counter
