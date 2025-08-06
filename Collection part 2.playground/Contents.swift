import Cocoa
// collection basics
// Dictionaries
var greeting = "Hello, playground"
var myDictionary = [String: Int]()
var MyDictionary = Dictionary<String, Int>()
var Mydictionary:[String: Int] = [:]
// var name_of_dictionary = [key:value] ==>known as key value pair
var scores = ["player1": 500, "player2": 1000]
print(scores)
// modification of values
scores["player1"] = 999
print(scores)

scores["player3"] = 888
print(scores)
// the above will add an element in the dictionary when a key that is not persent in the dictionay is called
// added in random manner
// you cannot display the dictionary in a perticular manner, you have to write the logic yourself

// the key "player4" is not present in the dictionary hence it returns nil , this won't add another element to the dictionary
//var temp = scores.updateValue(777, forKey: "player4")
//print(temp)

scores.updateValue(777, forKey: "player4")
print(scores)

// using nil collion we can make the func scores.updateValue return the value for the give key
scores.updateValue(777, forKey: "player4") ?? 0
print(scores)

// using nil collion we can make the func scores.updateValue return the value for the give key, and as the key player5 is not present in the dictionary it will return the default value in this case 0

scores.updateValue(777, forKey: "player5") ?? 0
print(scores)

var languages: [String: String] = ["one": "swift" , "Second":"java","third" : "python"]
print(languages)

//var value = languages.updateValue("c++", forKey: "Fouth")
//print(value)

// the above returns nil to avoid this we will use this
var Value = languages.updateValue("c++", forKey: "Fouth") ?? "not present"
print(Value)


languages.removeValue(forKey: "Second")
print(" After deletion \(languages)")

var removedValue = languages.removeValue(forKey: "third") ?? "not present" // here we have again use nil  collision
print(" After deletion \(removedValue)")
// out put =  After deletion Optional("python")
print(languages)

print(languages.count)
print("Keys: \(languages.keys)")// will fetch all the keys of dictionary this is a proerty as () are nit present

print("Keys: \(languages.values)")

var fetchValues = languages["one"] ?? "None"
print(fetchValues)

var FetchValues = languages["ten"] ?? "Key not present"
print(FetchValues)

var person = ["Nevin":"Abraham", "Sejal": 19, "Manav": 21.01] as [String : Any]
print(person)

