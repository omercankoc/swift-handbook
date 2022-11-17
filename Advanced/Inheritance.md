# Inheritance
A class can inherit methods, properties, and other characteristics from another class. 
When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. 
Inheritance is a fundamental behavior that differentiates classes from other types in Swift.

Classes in Swift can call and access methods, properties, and subscripts belonging to their superclass and can provide their own overriding 
versions of those methods, properties, and subscripts to refine or modify their behavior. Swift helps to ensure your overrides are correct 
by checking that the override definition has a matching superclass definition.

Classes can also add property observers to inherited properties in order to be notified when the value of a property changes. 
Property observers can be added to any property, regardless of whether it was originally defined as a stored or computed property.

A class cannot be inherited by more than one class.

### Superclass
Any class that doesn’t inherit from another class is known as a base class.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}

class Language {
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    init(language : String, developer : String, year : Int, type : LanguageType) {
        self.language = language
        self.developer = developer
        self.year = year
        self.type = type
        
        print("Created Language Object!")
    }
    
    func speak() {
       print("Superclass!")
    }
}
```
### Subclass
Subclassing is the act of basing a new class on an existing class. 
The subclass inherits characteristics from the existing class, which you can then refine. 
You can also add new characteristics to the subclass.

The "super" identifier is used to access the properties and methods of the superclass.
```swift
class Swift : Language {
    
    var compiler : String
    
    init(compiler : String, language : String, developer : String, year : Int, type : LanguageType){
        self.compiler = compiler
        super.init(language: language, developer: developer, year: year, type: type)
        print("Created Swift Object!")
    }

    override func speak() {
        print("Subclass!")
    }
    
    func superSpeak(){
        super.speak()
    }
    
    func message(){
        print("Swift Programming Languages")
    }
}
```
### Override
A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, 
or subscript that it would otherwise inherit from a superclass. This is known as overriding.

To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword. 
Doing so clarifies that you intend to provide an override and haven’t provided a matching definition by mistake. 
Overriding by accident can cause unexpected behavior, and any overrides without the override keyword are diagnosed as an error when your code is compiled.

The override keyword also prompts the Swift compiler to check that your overriding class’s superclass (or one of its parents) 
has a declaration that matches the one you provided for the override. This check ensures that your overriding definition is correct.

```swift
let swift = Swift(compiler: "LLVM", language: "Swift", developer: "Apple", year: 2011 , type: .Compiled)
print("\(swift.compiler) \(swift.language) \(swift.developer) \(swift.year) \(swift.type)")
swift.speak()
swift.superSpeak()
swift.message()
```
```
Created Language Object!
Created Swift Object!
LLVM Swift Apple 2011 Compiled
Subclass!
Superclass!
Swift Programming Languages
```
