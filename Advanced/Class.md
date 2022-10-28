# Class
Classes are general-purpose, flexible constructs that become the building blocks of your program code. 
You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, 
variables, and methods. Classes are reference types.
Objects have two properties, state and behavior.

### Properties
They are properties of objects. Here language, developer, year and type variables are properties.
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
Properties : They are properties of objects. Here language, developer, year and type variables are properties.

### Enum
It is a form of recognizing a set of values for an object. It can inherit properties.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}
```
### Instances
Creates a new instance of the class, with any properties initialized to their default values.
```swift
let kotlin = Languages(initLanguage: "Kotlin", initDeveloper: "JetBrains", initYear: 2014, initType: .Compiled)
```
