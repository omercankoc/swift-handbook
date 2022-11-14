# Struct
- Structs work as Value Types.
- They are kept in the memory with the stack logic, so when the data is wanted to be read, it is read faster.
- There is no inheritance feature in the struct. (No Inheritance)
- It cannot be used with Objective-C.
- They are simple and fast.
- They do not cause memory (RAM) problems.
- They are Threadsafe.
### Defination
```swift
struct User {
    var username : String
    var password : String
}
```
### Initialize
```swift
var omer = User(username : "omer", password: "********"
```
```
omer ********
```
## Composition
A parameter of a class or struct can be another class or variable itself. This situation is called composition.
```swift
struct Contact {
    var email : String
    var phone : String
}

struct User {
    var username : String
    var password : String
    var contact : Contact
}
```
```swift
var omer = User(username: "omer", password: "********", contact: Contact(email: "omer@mail.com", phone: "+19876543210"))

```
```
omer ******** omer@mail.com +19876543210
```
