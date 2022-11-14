# Initialization
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
