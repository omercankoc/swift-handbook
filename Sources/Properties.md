# Properties
Properties associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.

In addition, you can define property observers to monitor changes in a property’s value, which you can respond to with custom actions. Property observers can be added to stored properties you define yourself, and also to properties that a subclass inherits from its superclass.

## Stored Properties
In its simplest form, a stored property is a constant or variable that’s stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the <b>var</b> keyword) or constant stored properties (introduced by the <b>let</b> keyword).

```swift
struct User {
    var name: String
    var surname: String
}

var user = User(name: "Omer", surname: "Koc")
print(user)

user.name = "Omer Can"
print(user)
```
```
User(name: "Omer", surname: "Koc")
User(name: "Omer Can", surname: "Koc")
```

### Lazy Stored Properties
A lazy stored property is a property whose initial value is not calculated until the first time it’s used.

You must always declare a lazy property as a variable (with the var keyword), because its initial value might not be retrieved until after instance initialization completes. Constant properties must always have a value before initialization completes, and therefore can’t be declared as lazy.

Lazy properties are useful when the initial value for a property is dependent on outside factors whose values aren’t known until after an instance’s initialization is complete. Lazy properties are also useful when the initial value for a property requires complex or computationally expensive setup that shouldn’t be performed unless or until it’s needed.

```swift
struct User {
    var name: String
    var surname: String
    
    lazy var username: String = {
        return (self.name.lowercased() + "." + self.surname.lowercased())
            .replacingOccurrences(of: " ", with: "")
    }()
}
```
```swift
var user = User(name: "Omer Can", surname: "KOC")
print(user)
```
```
User(name: "Omer Can", surname: "KOC", $__lazy_storage_$_username: nil)
```
```swift
_ = user.username
print(user)
```
```
User(name: "Omer Can", surname: "KOC", $__lazy_storage_$_username: Optional("omercan.koc"))
```

## Computed Properties (ENUMERATIONS, CLASSES or STRUCTURES)
In addition to stored properties, classes, structures, and enumerations can define computed properties, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

- Getter and Setter
```swift
struct User {
    var username : String? {
        get {
            guard let storage = UserDefaults.standard.string(forKey: "username") else { return nil }
            return storage
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "username")
        }
    }
    
    var password : String? {
        get {
            guard let storage = UserDefaults.standard.string(forKey: "password") else { return nil }
            return storage
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "password")
        }
    }
    
    var authentication : Bool {
        get {
            if self.username != nil && self.password != nil {
                return true
            } else {
                return false
            }
        }
    }
    
    func delete(){
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.removeObject(forKey: "password")
    }
}

var user = User()
user.username = "developer"
user.password = "password"

print(user.username as Any, user.password as Any, user.authentication)

user.delete()

print(user.username as Any, user.password as Any, user.authentication)
```
```
Optional("developer") Optional("password") true
nil nil false
```

## Property Observers (ONLY CLASSES)
```swift
class Logic {
    var status : Bool = false {
        willSet {
            print("WILL SET : Current Value -> \(status) : New Value -> \(newValue)")
        }
        
        didSet {
            print("DID SET : Current Value  -> \(status) : Old Value -> \(oldValue)")
        }
    }
}

var first = Logic()
first.status = true
```

```
WILL SET : Current Value -> false : New Value -> true
DID SET : Current Value  -> true : Old Value -> false
```




