## Polymorphism

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
