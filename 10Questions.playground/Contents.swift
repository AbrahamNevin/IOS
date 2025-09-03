import Cocoa

// 1.
func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}
print(calculateArea(length: 10, width: 20))


// 2.
func reverse(string: String) -> String {
    return String(string.reversed())
}
print(reverse(string: "Mithil"))


// 3.
func factorial(of number: Int) -> Int {
    if number == 0 || number == 1 {
        return 1
    } else {
        return number * factorial(of: number - 1)
    }
}


// 4.
func swapValues(a: inout Int, b: inout Int) {
    var temp: Int
    temp = a
    a = b
    b = temp
}
var x = 10
var y = 20
print("Before swapping x = \(x), y = \(y)")
swapValues(a: &x, b: &y)
print("After swapping x = \(x), y = \(y)")


// 5.
func isPalindrome(word: String) -> Bool{
    if word == String(word.reversed()) {
        return true
    }
        return false
}
print(isPalindrome(word: "radar"))


// 6.
func countVowels(in text: String) -> Int {
    var count = 0
    for i in text {
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            count += 1
        }
    }
    return count
}
print(countVowels(in: "are there vowels in this string?"))


// 7.
func power(base: Int, )
