# Loops
Bir işlemin birden fazla kez çalıştırılması gerektiğinde kullanılan kod bloklarıdır.

### While

Şart ifadesinin doğruluğu döngünün başında her defasında kontrol edilir ve belirtilen koşul sağlandığı sürece döngü devam eder. Sayaç, döngü içerisinde değer alır ve koşul sağlanmadığı takdirde döngüden çıkılır.

```swift
var iterator: Int = 1
var limit: Int = 20
var even: [Int] = []
var odd: [Int] = []

while iterator <= limit {
    if iterator % 2 == 0 {
        even.append(iterator)
    } else {
        odd.append(iterator)
    }
    
    iterator += 1
}
```
```
Even Number: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
Odd Number: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
```

### Repeat While

Koşul durumu dikkate alınmadan önce döngü bloğunda yazılı olan işlem bir kereliğine çalıştırılır. Daha sonra koşul yanlış olana kadar döngü tekrarlanmaya devam eder.

```swift
var iterator: Int = 1
var limit: Int = 20
var even: [Int] = []
var odd: [Int] = []

repeat {
    if iterator % 2 == 0 {
        even.append(iterator)
    } else {
        odd.append(iterator)
    }
    
    iterator += 1
} while iterator <= limit
```
```
[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
```

### For In

İşlemlerin koleksiyon elemanları veya belirli bir aralıktaki elemanlar üzerinde tekrarlanmasını sağlayan kod bloklarıdır.

```swift
var index: Int = 0
var base: [Int] = [0,1,1,2,3,5,7,13,15,21,34,55,89,144]
var square: [Int] = []

for index in base {
    if index == 0 { continue }
    if index == 13 { break }
    square.append(index * index)
}
```
```
[1, 1, 4, 9, 25, 49]
```

- Closed Range Operator

```swift
var index: Int = 0
var limit: Int = 10

for index in 0...limit {
    print(index) 
}
```
```
0 1 2 3 4 5 6 7 8 9 10
```

- Half-Open Range Operator

```swift
var index: Int = 0
var limit: Int = 10

for index in 0..<limit {
    print(index)
}
```
```
0 1 2 3 4 5 6 7 8 9
```

- One-Sided Ranges

```swift
var index: Int = 0
var base: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for index in base[2...]{
    print(index)
}
```
```
2 3 4 5 6 7 8 9 10
```

```swift
var index: Int = 0
var base: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for index in base[...5]{
    print(index)
}
```
```
0 1 2 3 4 5
```

```swift
var index: Int = 0
var base: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for index in base[..<5]{
    print(index)
}
```
```
0 1 2 3 4 
```

- Stride

```swift
var index: Int = 0

for index in stride(from: 0, to: 60, by: 10){
    print(index)
}
```
```
0 10 20 30 40 50
```

### For Each

Koleksiyonların (array, set, dictionary) elemanları üzerinde ilerleyen ve bu elemanlar üzerinde işlem yapmayı mümkün kılar.

```swift
var os : [String] = ["iOS","iPadOS","macOS","watchOS","tvOS"]
os.forEach { item in print("\(item)") }
```
```
iOS iPadOS macOS watchOS tvOS
```

# Conditional Statements

Koşul ve bu koşula ait süreçlerin belirtildiği temel kontrol yapılarıdır.

```swift
var midterm : Float = 65
var final : Float = 55
var score : Float = (midterm + final) / 2

var modulus = Int(score) % 2
```

### If Else

Koşulları ve bu koşulların sağlanması durumunda işlenecek kod bloklarını tanımlamak için kullanılır.

```swift
if final >= 50 {
    if score >= 50 && score < 55 {
        print("DC")
    } else if score >= 55 && score < 60 {
        print("DD")
    } else if score >= 60 && score < 68 {
        print("CC")
    } else if score >= 68 && score < 76 {
        print("CB")
    } else if score >= 76 && score < 84 {
        print("BB")
    } else if score >= 84 && score < 92 {
        print("BA")
    } else if score >= 92 && score <= 100 {
        print("AA")
    }
}
else {
   print("FF")
}
```
```
CC
```

- Guard Let

Sağlanmayan koşulu ifade etmek için kullanılan yapıdır.

```swift
var isNumeric = "5"
var notNumeric = "A"

func convertToInteger(value : String) -> Int {
    guard let result = Int(value) else {
        return 0
    }
    return result
}
```
```swift
convertToInteger(value: isNumeric)
convertToInteger(value: notNumeric)
```
```
5 0
```

- If Let

Sağlanan ve sağlanmayan koşulu ayrı ayrı ifade etmek için kullanılan yapıdır.

```swift
var isNumeric = "5"
var notNumeric = "A"

func convertToInteger(value : String) -> Int {
    if let result = Int(value) {
        return result
    } else {
        return 0
    }
}
```
```swift
convertToInteger(value: isNumeric)
convertToInteger(value: notNumeric)
```
```
5 0
```

### Switch Case

Değerlerin eşleşmesi durumunda işlenecek kod bloklarını tanımlamak için kullanılır.

```swift
switch modulus {
    case 0:
        print("Even")
        break
    case 1:
        print("Odd")
        break
    default:
        print("ANY!")
}
```
```
Even
```
