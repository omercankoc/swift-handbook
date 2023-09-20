## Extension
Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. But unlike Objective-C categories, Swift extensions don’t have names.

- Using extension for Variables
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

- Using extension for Functions
```swift
extension String {
    func createEMail() -> String {
        return "\(self)@mail.com"
    }
}

var name : String = "developer"
var mail = name.createEMail()
print(mail)
```
