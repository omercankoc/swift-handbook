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
    var email : String
}
```
### Initialize
```swift
var nicola = User(username : "nicola", password: "acdc", email : "nicola@mail.com")
```
Let's take a look at the struct we created.
```swift
print("Username : \(nicola.username) Password : **** E-Mail : \(nicola.email)")
```
```
Username : nicola Password : **** E-Mail : nicola@mail.com
```
