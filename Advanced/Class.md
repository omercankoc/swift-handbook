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
### Static Variables and Methods
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
var code = Message.message(statusCode: "200")
```
```
Status Code : 200
```
## Initialization
Initialization is the process of preparing an instance of a class, structure, or enumeration for use. 
This process involves setting an initial value for each stored property on that instance and performing any other setup or 
initialization that’s required before the new instance is ready for use.

You implement this initialization process by defining initializers, which are like special methods that can be called to create a new instance of a particular type. 
Unlike Objective-C initializers, Swift initializers don’t return a value. 
Their primary role is to ensure that new instances of a type are correctly initialized before they’re used for the first time.


- Define the Properties and Methods of the Class:
```swift
class Languages {
    var language : String
    var developer : String
    var year : Int
    
    init(language : String, developer : String, year : Int) {
        self.language = language
        self.developer = developer
        self.year = year
    }
    
    func message(language : String, developer : String, year : Int) -> String {
        return "\(language) programming language started to be developed by \(developer) in \(String(year))."
    }
}
```
- Instance of the Class:
```swift
var swift = Languages(language: "Swift", developer: "Apple", year: 2014)
var message = swift.message(language: swift.language, developer: swift.developer, year: swift.year)
```
```
Swift programming language started to be developed by Apple in 2014.
```
## Enumeration
An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

Enumerations in Swift are first-class types in their own right. 
They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, 
and instance methods to provide functionality related to the values the enumeration represents. 
Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and 
can conform to protocols to provide standard functionality.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}
```

- Adding an enum as a property to a class:
```swift
class Languages { 
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    init(initLanguage : String, initDeveloper : String, initYear : Int, initType : LanguageType) {
        self.language = initLanguage
        self.developer = initDeveloper
        self.year = initYear
        self.type = initType
        
        print("Created Language Object!")
    }
}
```
```swift
let kotlin = Languages(initLanguage: "Kotlin", initDeveloper: "JetBrains", initYear: 2014, initType: .Compiled)
```
## Extension
Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. But unlike Objective-C categories, Swift extensions don’t have names.

- Using extension for Variables:
```swift
extension Double {
    var km : Double { return self * 1000.0 }
    var hm : Double { return self * 10.0 }
    var dam : Double { return self * 10.0 }
    var m : Double { return self * 1.0 }
    var dm : Double { return self / 10.0 }
    var cm : Double { return self / 100.0 }
    var mm : Double { return self / 1000.0 }
}

var variable : Double = 10.0
print("\(variable) km. = \(10.km) m")
```
- Using extension for Functions:
```swift
extension String {
    func createEMail(name : String) -> String {
        return "\(name)@mail.com"
    }
}

var name : String = "developer"
var mail = name.createEMail(name: name)
print(mail)
```
