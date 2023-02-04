# Class
Classes are general-purpose, flexible constructs that become the building blocks of your program code. 
You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, 
variables, and methods. Classes are reference types.
Objects have two properties, state and behavior.

- Define the Properties and Methods of the Class:
```swift
class Languages {    
    var language : String?
    var developer : String?
    var year : Int?
   
    func message(language : String, developer : String, year : Int) -> String {
        return "\(language) programming language started to be developed by \(developer) in \(String(year))."
    }
}
```
- Instance of the Class:
```swift
var swift = Languages()
swift.language = "Swift"
swift.developer = "Apple"
swift.year = 2014
```
```swift
var message = swift.message(language: swift.language ?? "Language", developer: swift.developer ?? "Developer", year: swift.year ?? 0)
```
```
Swift programming language started to be developed by Apple in 2014.
```
## Static Variables and Methods
Used to access a variable or method without an instance of the class or struct.
```swift
class Message {
    static var statusCode : String?
    
    static func message(statusCode : String) -> String {
        return "Status Code : \(statusCode)"
    }
}
```
```swift
Message.statusCode = "200"
var message = Message.message(statusCode: "200")
```
```
Status Code : 200
```
