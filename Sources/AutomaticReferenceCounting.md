# Automatic Reference Counting (ARC)
Apple has developed ARC (Automatic Reference Counter) to ensure memory management. ARC is a memory management feature of the Clang compiler that provides Automatic Reference Counting for the Objective-C and Swift programming languages. When you create an object from a class, ARC remembers that this instance has been referenced exactly once. When you then assign that object to another variable, ARC increases the reference count to 2 because the two variables point to the same object. Now if you destroy the first variable, ARC pulls the reference count back to 1. If the other variable we assign is defined as "strong" and a cycle is somehow formed, the object cannot be deallocated.

References:
- STRONG -> Each Instance increments the reference count by one.
- WEAK -> Instance does not affect the reference count.
- UNOWNED -> Instance does not affect the reference count but it must take a variable value. Even if the object is "deallocate", it continues to hold the reference of this object.

```swift
class User {
    var username: String?
    var password: String?
    
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
var first: User? = User(username: "first", password: "********")
var second: User? = first
var third: User? = first
```
```swift
first = nil
second = nil
```
```
-> No Output <-
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
var first: User? = User(username: "first", password: "********")
weak var second: User? = first
unowned var third: User? = first
```
```swift
first = nil
```
```
User Class deleted Memory!
```
After deleting the strong reference the memory was cleared.

## Memory Leak 
Memory that is allocated at some point but is never released and is no longer referenced by your application is called a "Memory Leak".
- Issue
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
-> MEMORY LEAK <-
```

- Solution
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
The situation of not being deleted from memory, which occurs when two objects reference each other, is called "Retain Cycle".

- Issue
```swift
class Before {
    var after: After?
    
    deinit {
        print("Before is Deallocated.")
    }
}

class After {
    var before: Before?
    
    deinit {
        print("After is Deallocated.")
    }
}

var first: Before? = Before()
var second: After? = After()

first?.after = second
second?.before = first

first = nil
second = nil
```
```
-> RETAIN CYCLE <-
```

- Solution
```swift
class Before {
    var after: After?
    
    deinit {
        print("Before is Deallocated.")
    }
}

class After {
    weak var before: Before?
    
    deinit {
        print("After is Deallocated.")
    }
}

var first: Before? = Before()
var second: After? = After()

first?.after = second
second?.before = first

first = nil
second = nil
```
```
Before is Deallocated.
After is Deallocated.
```

### Autoreleasepool 
```swift
```
