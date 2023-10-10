## Enumeration
Assigning a group of values ​​to a property.

- Declaration
```swift
enum Code {
    case UPC(Int,Int,Int,Int)
    case QR(String)
}
```

- Assignment
```swift
struct Process {
    let id : Int
    let date : String
    let code : Code
    
    init(id: Int, date: String, code: Code) {
        self.id = id
        self.date = date
        self.code = code
    }
}
```

- Instance
```swift
var process = Process(id: 112358, date: "20221010", code: Code.UPC(6, 6161, 616161, 1))
print(process)
```
```
Process(id: 112358, date: "20221010", code: Board.Code.UPC(6, 6161, 616161, 1))
```
