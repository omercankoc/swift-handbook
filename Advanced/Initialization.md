# Initialization
Initialization is the process of preparing an instance of a class, structure, or enumeration for use. 
This process involves setting an initial value for each stored property on that instance and performing any other setup or 
initialization that’s required before the new instance is ready for use.

You implement this initialization process by defining initializers, which are like special methods that can be called to create a new instance of a particular type. 
Unlike Objective-C initializers, Swift initializers don’t return a value. 
Their primary role is to ensure that new instances of a type are correctly initialized before they’re used for the first time.


- Define the Properties of the Class:
They are properties of objects. Here language, developer, year and type variables are properties.
```swift
class Languages {
    var language : String
    var developer : String
    var year : Int
    
    init(initLanguage : String, initDeveloper : String, initYear : Int) {
        self.language = initLanguage
        self.developer = initDeveloper
        self.year = initYear
        
        print("Created Language Object!")
    }
    
    func message(){
        print("\(language) programming language started to be developed by \(developer) in \(String(year)).")
    }
    
    func message(language : String, developer : String, year : Int) -> String {
        return "\(language) programming language started to be developed by \(developer) in \(String(year))."
    }
}
```
- Create an Instance of the Class:
```swift
let kotlin = Languages(initLanguage: "Kotlin", initDeveloper: "JetBrains", initYear: 2014)
var message = kotlin.message(language: kotlin.language, developer: kotlin.developer, year: kotlin.year)
kotlin.message()
```
