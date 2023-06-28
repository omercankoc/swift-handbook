# Struct
- Structs work as Value Types.
- They are kept in the memory with the stack logic, so when the data is wanted to be read, it is read faster.
- There is no inheritance feature in the struct. (No Inheritance)
- It cannot be used with Objective-C.
- They are simple and fast.
- They do not cause memory (RAM) problems.
- They are Threadsafe.
### Definition Syntax
```swift
struct User {
    var username : String
    var password : String
}
```
### Instance
```swift
var omer = User(username : "omer", password: "********"
```
```
omer ********
```
## Composition
A parameter of a class or struct can be another class or variable itself. This situation is called composition.
```swift
struct Contact {
    var email : String
    var phone : String
}

struct User {
    var username : String
    var password : String
    var contact : Contact
}
```
```swift
var omer = User(username: "omer", password: "********", contact: Contact(email: "omer@mail.com", phone: "+19876543210"))

```
```
omer ******** omer@mail.com +19876543210
```


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
