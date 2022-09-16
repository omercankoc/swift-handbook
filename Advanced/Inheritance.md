# Inheritance
A class can inherit methods, properties, and other characteristics from another class. 
When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. 
Inheritance is a fundamental behavior that differentiates classes from other types in Swift.

Classes in Swift can call and access methods, properties, and subscripts belonging to their superclass and can provide their own overriding 
versions of those methods, properties, and subscripts to refine or modify their behavior. Swift helps to ensure your overrides are correct 
by checking that the override definition has a matching superclass definition.

Classes can also add property observers to inherited properties in order to be notified when the value of a property changes. 
Property observers can be added to any property, regardless of whether it was originally defined as a stored or computed property.

### Defining a Base Class
Any class that doesn’t inherit from another class is known as a base class.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}

class Languages {
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    init(initLanguage : String, initDeveloper : String, initYear : Int, initType : LanguageType) {
        language = initLanguage
        developer = initDeveloper
        year = initYear
        type = initType
        
        print("Created Language Object!")
    }
    
    func speak() {
       print("Base Class!")
    }
}
```
### Subclassing
Subclassing is the act of basing a new class on an existing class. 
The subclass inherits characteristics from the existing class, which you can then refine. 
You can also add new characteristics to the subclass.
```swift
class Swift : Languages {
    
    func message(){
        print("Swift Programming Languages")
    }

    override func speak() {
        super.speak()
        print("Subclass!")
    }
}
```
### Overriding
A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, 
or subscript that it would otherwise inherit from a superclass. This is known as overriding.

To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword. 
Doing so clarifies that you intend to provide an override and haven’t provided a matching definition by mistake. 
Overriding by accident can cause unexpected behavior, and any overrides without the override keyword are diagnosed as an error when your code is compiled.

The override keyword also prompts the Swift compiler to check that your overriding class’s superclass (or one of its parents) 
has a declaration that matches the one you provided for the override. This check ensures that your overriding definition is correct.

```swift
let swift = Swift(initLanguage: "Swift", initDeveloper: "Apple", initYear: 2011, initType: .Compiled)
```

```swift
print("\(swift.language) \(swift.developer) \(swift.year) \(swift.type)")
```
```
Swift Apple 2011 Compiled
```

```swift
swift.speak()
```
```
Base Class!
Subclass!
```

```swift
swift.message()
```
```
Swift Programming Languages
```
