import Cocoa

//
//Collections:
//
//Collection of data which is benign handled by one common name
//
//Collection types
//
//Array and dictionary


var greeting = "Hello, playground"



// difining arrays

// var myArray:[Int] = []
// var myArray: Array<Int> = []
// var myArray = [Int]()

//var names: [String] = ["Manav", "Sejal", "Nevin"]
var names = ["Manav", "Sejal", "Nevin"] // you don't need type anotation as it can automatically understand that its arrray
var number = 50// automatically understands that it is single element
 print(names)
var numbers = [1,2,3,4,5,-6,7]// co relate this with type interference
print(numbers)
// 4 bytes = 32 bits
// 8 =>  1000
// 8 indicates 8 bits = 1byte
var numberS : [Int8] = [1,2,3,4,5] // used to use memory efficiently


if numbers.contains(10) {
    print("array has 10")
} else {
    print("10 is not present ")
}



var myArray:[Int] = [1,2,3]
var MyArray: Array<Int> = [1,2]
var myArraY = [Int] (arrayLiteral: 3,5,7)
print(myArraY)


var myArrays:[Int] = Array(repeating: 0, count: 25)// repeating values
print(myArrays)

struct person {}
var p1 : [person]// this  refference type

var array = [Int]()
print(array)

if array.isEmpty{
    print("empty")
} else {
    print(" ! empty ")
}
    
var teamMates : [String] = ["Nevin", "Harsh", "Manav"]
print(teamMates)

print("second person of the team \(teamMates[1])")
teamMates[1] = "harshwardhan" // replace operation
print(teamMates)
teamMates.append( "Sejal")
print(teamMates)

print(teamMates.count)
//teamMates[4] = "nitin" => index out of bound exception

print(teamMates[0].append(" Abraham"))
print(teamMates[0])

var strArray : [String] = ["swift", "nevin"]
print(strArray)
strArray += ["Abraham", "Sejal"]
print(strArray)

// insert operation

strArray.insert("design" , at: 0)
print(strArray)
 
print(strArray.count)
//strArray.insert("IOS" , at: 6) => as array is continous allocation we cannot use this error " array index out of range"
strArray.insert("IOS" , at: 5)
print(strArray.count)
print(strArray)
print(strArray[5])

// Remove
// remove works as a function that is taking one parameter as at and returns a value that is being removed

strArray.remove(at: 1)
print(strArray)
var lastElement = strArray.removeLast()
print(lastElement)
strArray.removeAll()
print(strArray.count)

//print("drop last \(myArra)")// droplast returns the remaining elements
var firstArray = [1,2,3]
var secondArray = [4,5,6]
var combinedArray = firstArray + secondArray
print(combinedArray)
// 2D Array & Indexing
var CombinedArray = [firstArray , secondArray]
print(CombinedArray)
print(CombinedArray[0])//[1,2,3]
print(CombinedArray[0][1])// 2
print(CombinedArray[1])// [4,5,6]
print(CombinedArray[1][2])// 6


