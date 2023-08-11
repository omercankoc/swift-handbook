# Struct and Class
- Both structs and classes can define properties to store values, and they can define functions.
- They can define subscripts to provide access to values with subscript syntax.
- They can define initializers to set up their initial state, with init().
- They can be extended with extension.
- They can conform to protocols, for example to support Protocol Oriented Programming.
- They can work with generics to provide flexible and reusable types.

Classes support a few more capabilities that structs don’t have.
- Classes can inherit from another class, like you inherit from UIViewController to create your own view controller subclass.
- Classes can be deinitialized, i.e. you can invoke a deinit() function before the class is destroyed.
- Classes are reference types and structs are value types.

Value Type: When you copy a value type (i.e., when it’s assigned, initialized or passed into a function), each instance keeps a unique copy of the data. If you change one instance, the other doesn’t change too.

Reference Type: When you copy a reference type, each instance shares the data. The reference itself is copied, but not the data it references. When you change one, the other changes too.

## Struct
- Declaration
```swift
struct User {
    var username : String
    var password : String
}
```
- Instance
```swift
var omer = User(username : "omer", password: "********"
```
```
omer ********
```

## Class
- Declaration
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
- Instance
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
omer ******** omer@mail.com +9876543210
```

## Static Properties and Functions
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
Message.message(statusCode: "200")
```
```
Status Code : 200
```
