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
class Language {
    var language : String
    var developer : String
    var year : Int
    
    init(language : String, developer : String, year : Int) {
        self.language = language
        self.developer = developer
        self.year = year
        
        print("Created Language Object!")
    }
    
    func speak() {
       print("speak() run in Superclass!")
    }
}
```
### Subclass
Subclassing is the act of basing a new class on an existing class. 
The subclass inherits characteristics from the existing class, which you can then refine. 
You can also add new characteristics to the subclass.

The "super" identifier is used to access the properties and methods of the superclass.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}

class Swift : Language {
    
    var type : LanguageType
    
    init(type : LanguageType, language : String, developer : String, year : Int){
        self.type = type
        super.init(language: language, developer: developer, year: year)
        print("Created Swift Object!")
    }

    override func speak() {
        print("Override speak() run in Subclass!")
    }
    
    func superSpeak(){
        super.speak()
        print("speak() run in Subclass!")
    }
    
    func message(){
        print("\(self.language) programming language was developed by \(self.developer) in \(self.year). (\(self.type)) ")
    }
}
```
## Override
A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, 
or subscript that it would otherwise inherit from a superclass. This is known as overriding.

To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword. 
Doing so clarifies that you intend to provide an override and haven’t provided a matching definition by mistake. 
Overriding by accident can cause unexpected behavior, and any overrides without the override keyword are diagnosed as an error when your code is compiled.

The override keyword also prompts the Swift compiler to check that your overriding class’s superclass (or one of its parents) 
has a declaration that matches the one you provided for the override. This check ensures that your overriding definition is correct.

```swift
let swift = Swift(type: .Compiled, language: "Swift", developer: "Apple", year: 2011)

swift.superSpeak()
swift.speak()
swift.message()
```
```
Created Language Object!
Created Swift Object!
speak() run in Superclass!
speak() run in Subclass!
Override speak() run in Subclass!
Swift programming language was developed by Apple in 2011. (Compiled)
```

# Polymorphism

```swift
class Language {
    func message(){
        print("Superclass")
    }
}

class Swift : Language {
    override func message(){
        print("Subclass")
    }
}
```

```swift
var language : Language = Swift()
language.message()
```
```
Subclass
```

## Downcasting and Upcasting
The conversion of Superclass to Subclass is called Downcasting, conversion of Subclass to superclass is called Upcasting.
- is : Used for type checking.
- as : It is used to convert one type to another.
- as! (Force Downcasting) : It is used to convert one type to another type. Returns value if successful, error if unsuccessful.
- as? (For Optinonal Downcasting) : It is used if there is an optional data during the conversion. Returns value if successful, nil if unsuccessful.
