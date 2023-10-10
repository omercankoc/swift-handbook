## Extension (CLASSES, STRUCTURES, ENUMERATIONS OR PROTOCOLS)

- Extension for Variables
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

- Extension for Functions
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
