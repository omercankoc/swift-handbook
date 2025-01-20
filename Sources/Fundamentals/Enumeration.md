## Enumeration

Belirli bir veri tipindeki sabit değerleri temsil etmek için kullanılır.

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
