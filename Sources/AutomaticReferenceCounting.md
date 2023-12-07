# Automatic Reference Counting (ARC)

When an object is created from a class, ARC remembers that this instance has been referenced exactly once. When this process is repeated, the number of references increases to two.

- Memory Leak: Memory that is never delete and is no longer referenced by the application. Memory leaks in the application can be detected by the "Leaks" test in the menu that will be opened via the Product -> Profiles option.

- Retain Cycle: The situation when an object references a second object is called "Strong Reference". The situation where these two objects cannot be deleted from memory, which occurs when they reference each other, is called "retain cycle". By defining a "weak" or "unowned" variable instead of "strong", we ensure that the variable is deleted when the class in which it is located is deallocated.

```swift
class User {
    var username : String?
    var password : String?
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    deinit {
        print("User Class deleted Memory!")
    }
}
```

```swift
var first : User? = User(username: "first", password: "********")
var second : User? = first
var third : User? = first
```
```swift
first = nil
second = nil
```
```

```

```swift
first = nil
second = nil
third = nil
```
```
User Class deleted Memory!
```
After deleting all objects the memory was cleared.

```swift
var first : User? = User(username: "first", password: "********")
weak var second : User? = first
unowned var third : User? = first
```
```swift
first = nil
```
```
User Class deleted Memory!
```
After deleting the strong reference the memory was cleared.

- strong : Each Instance increments the reference count by one.
- weak : Instance does not affect the reference count.
- unowned : Instance does not affect the reference count but it must take a variable value. Even if the object is "deallocate", it continues to hold the reference of this object.
