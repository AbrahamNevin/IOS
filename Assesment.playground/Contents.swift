import Cocoa

//1. Create an array of numbers and Remove duplicates from an array

var numbers: [Int] = [1, 2, 2, 3, 4, 4, 5]
var duplicateValues:[Int] = []
for num in numbers {
    if !duplicateValues.contains(num) {
        duplicateValues.append(num)
    }
    print(duplicateValues)
}

// 2. create array of strings, and Count total vowels in an array of strings

var strings: [String] = ["Hello", "World", "Swift", "Coders"]
var totalVowels: Int = 0
for string in strings {
    let lowerCasedString = string.lowercased()
    for character in lowerCasedString {
        switch character {
        case "a", "e", "i", "o", "u":
            totalVowels += 1
        default:
            break
        }
    }
    print(totalVowels)
}

// 3. create array of strings and Group words by their length
//example : ["hi", "apple", "car", "no"]
//expected output : [2: ["hi", "no"], 5: ["apple"], 3: [“car"]]

var groupedWords: [Int: [String]] = [:]
for word in strings {
    groupedWords[word.count, default: []].append(word)
}
print(groupedWords)


//4. create a dictionary and Remove students with grade < 40

var students = ["Alice": 88, "Bob": 92, "Charlie": 39, "David": 94]
for (key , value) in students {
    if value < 40 {
        students.removeValue(forKey: key)
    }
}
print(students)

// 5.find the Max number in each row of 2D array

let matrix : [[Int]] = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
for (rowIndex, row) in matrix.enumerated() {
    if let maxInRow = row.max() {
        print("Max in row \(rowIndex): \(maxInRow)")
    }
}

// 6. create a number array , and group even and odd numbers and store it in dictionary
let number = [1, 2, 3, 4, 5, 6, 7, 8, 9]

var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

for num in number {
    if num.isMultiple(of: 2) {
        evenNumbers.append(num)
    } else {
        oddNumbers.append(num)
    }
}

print("Even numbers: \(evenNumbers)")
print("Odd numbers: \(oddNumbers)")

//7. create an array and Count frequency of each word in an array

let words = ["apple", "banana", "apple", "orange", "banana", "apple"]

var wordFrequencies: [String: Int] = [:]

for word in words {
    wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1
}

print(wordFrequencies)

//8. create a dictionary with key and value pair. Replace values with their squared value

var myDict: [String: Int] = ["a": 1, "b": 2, "c": 3]

for (key, value) in myDict {
    myDict[key] = value * value
}

print(myDict)

//9. create a dictionary, Update all values by multiplying them by 10

var myDict1: [String: Int] = ["a": 1, "b": 2, "c": 3]

for (key, value) in myDict1 {
    myDict1[key] = value * 10
}
print(myDict1)


//10. Remove a specific key from the dictionary only if its value == 0

var myDict2: [String: Int] = ["a": 1, "b": 0, "c": 3]

for (key, value) in myDict2 {
    if value == 0 {
        myDict2[key] = nil
    }
}
print(myDict2)
