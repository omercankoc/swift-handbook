## Polymorphism
From two classes with an inheritance relationship, the superclass behaving like a subclass is called polymorphism. It is used to achieve more inclusive results.
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
