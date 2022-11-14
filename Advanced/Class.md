# Class
Classes are general-purpose, flexible constructs that become the building blocks of your program code. 
You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, 
variables, and methods. Classes are reference types.
Objects have two properties, state and behavior.

- Define the Properties and Methods of the Class:
They are properties of objects. Here language, developer, year and type variables are properties.
```swift
class Languages {
    var language : String?
    var developer : String?
    var year : Int?
    
    func message(){
        print("\(language ?? "Language") programming language started to be developed by \(developer ?? "Developer") in \(String(year ?? 0)).")
    }
    
    func message(language : String, developer : String, year : Int) -> String {
        return "\(language) programming language started to be developed by \(developer) in \(String(year))."
    }
}
```
- Create an Instance of the Class:
```swift
var swift = Languages()
swift.language = "Swift"
swift.developer = "Apple"
swift.year = 2014
```
```swift
swift.message()
```
```
Swift programming language started to be developed by Apple in 2014.
```
```swift
var message = swift.message(language: swift.language ?? "Language", developer: swift.developer ?? "Developer", year: swift.year ?? 0)
```
```
Swift programming language started to be developed by Apple in 2014.
```

