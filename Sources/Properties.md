# Properties

- Property Observers (ONLY CLASSES)
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

## Stored Properties (CLASSES or STRUCTURES)
A constant or variable stored as a property of an instance of the class or structure.

- Lazy Stored Properties (ONLY VAR)
```swift
struct User {
    var name : String
    var surname : String
    
    lazy var username = {
        return name.lowercased() + "." + surname.lowercased()
    }()
    
    lazy var nickname = {
        return "\(name[name.startIndex].uppercased())\(surname[surname.startIndex].uppercased())"
    }()
}
```
```swift
var user = User(name: "Dennis", surname: "Ritchie")
print(user)
```
```
User(name: "Dennis", surname: "Ritchie", $__lazy_storage_$_username: nil, $__lazy_storage_$_nickname: nil)
```
```swift
_ = user.username
_ = user.nickname

print(user)
```
```
User(name: "Dennis", surname: "Ritchie", $__lazy_storage_$_username: Optional("dennis.ritchie"), $__lazy_storage_$_nickname: Optional("DR"))
```

## Computed Properties (ENUMERATIONS, CLASSES or STRUCTURES)
They provide a getter and an optional setter to retrieve and set properties indirectly.

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
