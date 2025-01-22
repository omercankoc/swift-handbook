# Automatic Reference Counting (ARC)
Referans sayımlarını yöneterek bellek tahsis ve serbest bırakma işlemlerini otomatikleştirir.

Refarans türleri:
- strong: Her instance referans sayısını bir artırır.
- weak: Instance referans sayısını etkilemez.
- unowned: Instance referans sayısını etkilemez ancak değişken bir değer almak zorundadır. Object "deallocate" olsa bile, bu nesnenin referansını tutmaya devam eder.

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
Tüm object'ler silindiktan sonra hafıza temizlendi.

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
"strong" referans silindikten sonra hafıza temizlendi.

## Memory Leak 
Bir noktada instance edilen ve artık uygulama tarafından kullanılmayan object'in hafızadan silinememe durumudur.

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
İki object'in birbirine referans vermesiyle oluşan, hafızadan silinmeme durumuna "Retain Cycle" denir.

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

## Autoreleasepool 
Geçici object'lerin (kısa yaşam döngüsüne sahip object'ler) bellekte çok uzun süre kalmasını önlemek için ve belirli yoğun bellek işlemlerinde (büyük döngüler, arka plan operasyonları) verimliliği artırmak için kullanılır. "autoreleasepool" olarak işaretlenen object, autopool boşaltığında serbest bırakılır. Bu süre zarfında ilgili object yaşamına devam eder. 

```swift
for i in imageArray {
    autoreleasepool {
        let image = getImage()
        ...
        // Geçici nesnelerin oluşturulduğu alan.
    }
    // Her döngü sonunda object'lerin serbest bırakıldığı alan.
}
```
