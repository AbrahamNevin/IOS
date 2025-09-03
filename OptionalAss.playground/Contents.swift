import UIKit

// Address struct with optional city and street
struct Address {
    var street: String
    var city: String
}

// Student class with failable initializer and optional Address
class Student {
    var name: String
    var age: Int
    var address: Address?

    init?(name: String, ageString: String, address: Address? = nil) {
        self.name = name
        // Convert ageString to Int safely
        guard let age = Int(ageString), age >= 0 else {
            return nil // failable initializer
        }
        self.age = age
        self.address = address
    }
}

// Function to safely print student info using optional binding and chaining
func printStudentInfo(student: Student?) {
    if let student = student {
        print("Name: \(student.name)")
        print("Age: \(student.age)")
        // Optional chaining to access optional address and city
        if let city = student.address?.city {
            print("City: \(city)")
        } else {
            print("City: Not available")
        }
    } else {
        print("Invalid student data.")
    }
}

// Example usage:
let address1 = Address(street: "123 Main St", city: "Mumbai")
let student1 = Student(name: "Amit", ageString: "21", address: address1)
printStudentInfo(student: student1)

let student2 = Student(name: "Riya", ageString: "notANumber")
printStudentInfo(student: student2)
