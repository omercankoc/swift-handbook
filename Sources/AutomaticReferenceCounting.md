# Automatic Reference Counting (ARC)
When an object is created from a class, ARC remembers that this instance has been referenced exactly once. When this process is repeated, the number of references increases to two.
- strong : Each Instance increments the reference count by one.
- weak : Instance does not affect the reference count.
- unowned : Instance does not affect the reference count but it must take a variable value. Even if the object is "deallocate", it continues to hold the reference of this object.

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

## Memory Leak 
Memory that is never delete and is no longer referenced by the application. Memory leaks in the application can be detected by the "Leaks" test in the menu that will be opened via the Product -> Profiles option.

- Problem
```swift
class Child {
    var name: String
    var parent: Parent?
    
    init(name: String, parent: Parent) {
        self.name = name
        self.parent = parent
    }
  
    deinit {
        print("Child \(name) is being deinitialized")
    }
}

class Parent {
    var name: String
    var children: [Child] = []
  
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Parent \(name) is being deinitialized")
    }
    
    func addChild(name: String) {
        let child = Child(name: name, parent: self)
        children.append(child)
    }
}

var parent: Parent? = Parent(name: "Sandy")

parent!.addChild(name: "Patrick")
parent!.addChild(name: "Emily")
parent!.addChild(name: "Joanna")

parent = nil
```
```
// No Output: MEMORY LEAK!
```

- Solved
```swift
class Child {
    weak var parent: Parent?
    var name: String
  
    init(name: String, parent: Parent) {
        self.name = name
        self.parent = parent
    }
  
    deinit {
        print("Child \(name) is being deinitialized")
    }
}

class Parent {
    var name: String
    var children: [Child] = []
  
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Parent \(name) is being deinitialized")
    }
    
    func addChild(name: String) {
        let child = Child(name: name, parent: self)
        children.append(child)
    }
}

var parent: Parent? = Parent(name: "Sandy")

parent!.addChild(name: "Patrick")
parent!.addChild(name: "Emily")
parent!.addChild(name: "Joanna")

parent = nil
```
```
Parent Sandy is being deinitialized
Child Patrick is being deinitialized
Child Emily is being deinitialized
Child Joanna is being deinitialized
```

## Retain Cycle
The situation when an object references a second object is called "Strong Reference". The situation where these two objects cannot be deleted from memory, which occurs when they reference each other, is called "retain cycle". By defining a "weak" or "unowned" variable instead of "strong", we ensure that the variable is deleted when the class in which it is located is deallocated.

- Problem
```swift
class Computer {
    var os: OS?
    
    deinit {
        print("Computer Deallocated...")
    }
}

class OS {
    var computer: Computer?
    
    deinit {
        print("OS Deallocated...")
    }
}

var proM1: Computer? = Computer()
var sonoma: OS? = OS()

proM1?.os = sonoma
sonoma?.computer = proM1

proM1 = nil
sonoma = nil
```
```
// No Output: RETAIN CYCLE!
```

- Solved
```swift
class Computer {
    var os: OS?
    
    deinit {
        print("Computer Deallocated...")
    }
}

class OS {
    weak var computer: Computer?
    
    deinit {
        print("OS Deallocated...")
    }
}

var proM1: Computer? = Computer()
var sonoma: OS? = OS()

proM1?.os = sonoma
sonoma?.computer = proM1

proM1 = nil
sonoma = nil
```
```
Computer Deallocated...
OS Deallocated...
```

