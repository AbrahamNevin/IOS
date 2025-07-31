// Structures
// structures is a user define type
// keyword = "struct"
// property members name same as struct name
import Cocoa

var greeting = "Hello Nevin!, We will learn Swift structs"
print(greeting)
// struct name should always start with capital letter
struct Person{
    var name: String
    var age:Int
}
// toaccess the properties of sturcts we make instances
// use " . "
// instancename.propertyname
// if the struct has  2 properties and we are only declaring one we will get this error "Missing argument for parameter 'age' in call"
let person = Person(name: "Nevin", age: 20)
print(person.name)
print(person.age)
let person1 = Person(name: "Sejal", age: 20)
print(person1.name)
print(person1.age)
//person1.age = 21 error : Cannot assign to property: 'person1' is a 'let' constant

var person2 = Person(name: "Noya", age: 20)
print(person2.name)
person2.age = 24
print(person2.age)

// func in struct
// here func get direct access of the struct

struct Human{
    var name: String
    var age:Int
    func sayHello() {
        print("Hi, I am \(name) and My age is \(age)")
    }
}
var human1 = Human(name:"Nevin", age: 20)
human1.sayHello()


// but by default struct considers memberwise as a initializers

// ===> initializers  "()" <===
// inbuilt struct that have  inbuild default initializers
let string = String()//""
var int = Int()//0
var bool = Bool()// false

// default initializer

struct Odometer{
    var count: Int = 0 // default value for int is normally zero but you can give any value that you want
}
var odometer = Odometer()// initailizer is empty so the deault value is used
print(odometer.count)
var odometer1 = Odometer(count:9)// "(count:9)" is known as member wise initializer
print(odometer1.count)// here we have passed a value in initializer


// use case of the above

struct Account{
    var accountNumber: Int
    var balance:Int = 0
}
let account1 = Account(accountNumber: 112233)// here there is no memberwise initializer but because we have given default initializer hence we don't have an error
let account2 = Account(accountNumber: 21232, balance: 23000)


// custom initializers

struct Temperature {
    var celsius: Double
    init(celsius: Double) {
        self.celsius = celsius// self = current instance, self keyword holds the memory of current object (memory address) and use self when you want the same name as an exiting variables
    }// left celsius is properties and right is  argument
    init(fahrenheit: Double){
        celsius = (fahrenheit - 32) / 1.8
    }
}

//struct Temperature{
//    var celsius: Double
//    var fahrenheit: Double
//    init(celsius: Double) {
// //        fahrenheit = (celsius + 32) * 1.8 => If you don't  initialize this than a error will come as in init (that means initializer) we need to initialize all the variables that are defined in the struct, you can either self initialize it or initialize it normally, as said if it is not initialized it wi throw an error as swift does not allow you to store garbage value, if it were java it would have worded and it  would have gotten initialized by 0.

 //        self.celsius = celsius// self = current instance, self keyword holds the memory of current object (memory address) and use self when you want the same name as an exiting variables
//    }

//    init(fahrenheit: Double){
//        celsius = (fahrenheit - 32) / 1.8
//        self.fahrenheit = fahrenheit
//    } => as you can see in the second init we have  self initialized fahrenheit and normally initialized celsius
//}

let currentTemprature = Temperature(celsius: 23.5)
let boilingTemperature = Temperature(fahrenheit: 212.0)// as fahrenheit is not a member of the struct we have used init
print(currentTemprature)
print(boilingTemperature)

// structs are value type
// mutating insures type safety -> if you want to change the values forcefully you use mutable

//Mutating Methods

struct Size{
    var height: Double
    var width: Double
    var count: Int = 0
    
    // what ever properties you take inside a struct by default it becomes unmutable
    // to change the value use the keyword "mutating"
    mutating func area() -> Double{
        height = 30.0
        return height * width
    }
    mutating func countUp(){
        count += 1
    }
    mutating func countUp(by amount: Int){
        count += amount
    }
    func paste(){
        print("Without mutating")
    }
}
var size1 = Size(height: 25, width: 30)
print(size1.area())


// computed properties
// memory is allocated on the fly
 struct Temperature2{
    var celsius: Double
    //this is computed properties
     var fahenheit: Double {
        celsius * 1.8 + 32
     }
}
let temp1 = Temperature2(celsius: 23.5)
print(temp1.fahenheit)

// ====> Property observer <====
//  2 keywords => willSet and didSet
// newValue and oldValue are keywords as well

struct StepCount{
    var totalSteps: Int = 0 {
        
        willSet {
            print("About to step totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) extra steps")
            }
        }
    }
    
    
    mutating func increment() {
        totalSteps += 10
    }
}
var counter = StepCount()
counter.totalSteps = 100
counter.totalSteps = 2313
counter.totalSteps = 3213

// Type Properties and Methods
struct againTemprature {
    @MainActor static var boilingPoint = 100.0
    static func convertedFromFahrenheit(_ tempratureInFahrenheit: Double) -> Double {
        (((tempratureInFahrenheit -  32 ) * 5) / 9)
    }
}
let boilingPoint = againTemprature.boilingPoint
let currentTemperature = againTemprature.convertedFromFahrenheit(78)

