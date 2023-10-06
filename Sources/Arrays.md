# Array

- Declaration
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
```
```swift
var os : Array<String> = ["iOS","iPadOS","macOS","watchOS","tvOS"]
```
```swift
var os : [String] = []
```
```swift
var os : Array<String> = []
```   

- Elements in Array
```swift
for iterator in os {
    print(iterator)
}
```
- Enumerated Elements in Array
```swift
for (index,iterator) in os.enumerated() {
    print(index, iterator)
}
```

## Methods

- Count
```swift
var numbers : [Int] = [0,2,4,3,1,6,5,9,7,8]
print(numbers.count)
```
```
10
```

- Is Empty
```swift
var numbers : [Int] = [0,2,4,3,1,6,5,9,7,8]
print(numbers.isEmpty)
```
```
false
```

- Append
```swift
var numbers : [Int] = [2,4,3,1,6,5,9,7,8]
print(numbers)
numbers.append(0)
print(numbers)
```
```
[2, 4, 3, 1, 6, 5, 9, 7, 8]
[2, 4, 3, 1, 6, 5, 9, 7, 8, 0]
```
```swift
var odd : [Int] = [0,2,4,6,8]
var even : [Int] = [1,3,5,7,9]
var numbers : [Int] = []
print(odd)
print(even)

numbers.append(contentsOf: even)
print(numbers)
numbers.append(contentsOf: odd)
print(numbers)

print(numbers.sorted())
```
```
[0, 2, 4, 6, 8]
[1, 3, 5, 7, 9]
[1, 3, 5, 7, 9]
[1, 3, 5, 7, 9, 0, 2, 4, 6, 8]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

- Insert
```swift
var numbers : [Int] = [0,1,2,3,4,6,7,8,9]
numbers.insert(5, at: 5)
print(numbers)

```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

- Remove
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
numbers.remove(at: 4)
print(numbers)
```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
[0, 1, 2, 3, 5, 6, 7, 8, 9]
```
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
numbers.removeFirst()
print(numbers)

```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
[1, 2, 3, 4, 5, 6, 7, 8, 9]
```
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
numbers.removeLast()
print(numbers)
```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
[0, 1, 2, 3, 4, 5, 6, 7, 8]
```
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
numbers.removeAll()
print(numbers)

```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
[]
```

- Reverse
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
os.reverse()
print(os)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
["tvOS", "watchOS", "iPadOS", "iOS", "macOS"]
```

- Swap
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
os.swapAt(1, 2)
print(os)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
["macOS", "iPadOS", "iOS", "watchOS", "tvOS"]
```

- Shuffle
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
os.shuffle()
print(os)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
["watchOS", "macOS", "iOS", "tvOS", "iPadOS"]
```

- Sort
```swift
var numbers : [Int] = [9,3,1,2,0,4,7,5,6,8]
print(numbers)
numbers.sort()
print(numbers)
```
```
[9, 3, 1, 2, 0, 4, 7, 5, 6, 8]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```
```swift
var numbers : [Int] = [9,3,1,2,0,4,7,5,6,8]
print(numbers)
numbers.sort(by: <)
print(numbers)
```
```
[9, 3, 1, 2, 0, 4, 7, 5, 6, 8]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```
```swift
var numbers : [Int] = [9,3,1,2,0,4,7,5,6,8]
print(numbers)
numbers.sort(by: >)
print(numbers)
```
```
[9, 3, 1, 2, 0, 4, 7, 5, 6, 8]
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

- Sorted
```swift
var numbers : [Int] = [9,3,1,2,0,4,7,5,6,8]
print(numbers)
var result = numbers.sorted(by: {$0 < $1})
print(result)
```
```
[9, 3, 1, 2, 0, 4, 7, 5, 6, 8]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```
```swift
var numbers : [Int] = [9,3,1,2,0,4,7,5,6,8]
print(numbers)
var result = numbers.sorted(by: {$0 > $1})
print(result)
```
```
[9, 3, 1, 2, 0, 4, 7, 5, 6, 8]
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

- Contains
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
if os.contains("iOS") { print("TRUE") } else { print(false) }
```
```
TRUE
```

- Max
```swift
var numbers : [Int] = [9,3,1,2,4,7,5,6,8]
print(numbers.max() ?? 0)
```
```
9
```

- Min
```swift
var numbers : [Int] = [9,3,1,2,4,7,5,6,8]
print(numbers.min() ?? 0)
```
```
1
```

- First
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var first = os.first ?? ""
print(first)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
macOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var first = os.first(where: {$0.lowercased().hasPrefix("io".lowercased())}) ?? ""
print(first)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
iOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var first = os.first(where: {$0.lowercased().hasSuffix("dos".lowercased())}) ?? ""
print(first)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
iPadOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var first = os.first(where: {$0.lowercased().contains("tch".lowercased())}) ?? ""
print(first)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
watchOS
```

- Last
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var last = os.last ?? ""
print(last)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
tvOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var last = os.last(where: {$0.lowercased().hasPrefix("ip".lowercased())}) ?? ""
print(last)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
iPadOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var last = os.last(where: {$0.lowercased().hasSuffix("vos".lowercased())}) ?? ""
print(last)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
tvOS
```
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
print(os)
var last = os.last(where: {$0.lowercased().contains("aco".lowercased())}) ?? ""
print(last)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
macOS
```

- Filter
```swift
var country : [String] = ["Istanbul","Ankara","Trabzon","Izmir","Adana","Samsun","Hatay","Balikesir","Çanakkale","Bursa","Gazi Antep","Kahraman Maraş","Eskisehir","Sakarya","Kocaeli"]
print(country)
var results = country.filter({$0.lowercased().hasPrefix("b".lowercased())})
print(results)
var result = country.filter({$0.lowercased().hasPrefix("b".lowercased())}).first ?? ""
print(result)
```
```
["Istanbul", "Ankara", "Trabzon", "Izmir", "Adana", "Samsun", "Hatay", "Balikesir", "Çanakkale", "Bursa", "Gazi Antep", "Kahraman Maraş", "Eskisehir", "Sakarya", "Kocaeli"]
["Balikesir", "Bursa"]
Balikesir
```
```swift
var country : [String] = ["Istanbul","Ankara","Trabzon","Izmir","Adana","Samsun","Hatay","Balikesir","Çanakkale","Bursa","Gazi Antep","Kahraman Maras","Eskisehir","Sakarya","Kocaeli"]
print(country)
var results = country.filter({$0.lowercased().hasSuffix("a".lowercased())})
print(results)
var result = country.filter({$0.lowercased().hasSuffix("a".lowercased())}).first ?? ""
print(result)
```
```
["Istanbul", "Ankara", "Trabzon", "Izmir", "Adana", "Samsun", "Hatay", "Balikesir", "Çanakkale", "Bursa", "Gazi Antep", "Kahraman Maras", "Eskisehir", "Sakarya", "Kocaeli"]
["Ankara", "Adana", "Bursa", "Sakarya"]
Ankara
```
```swift
var country : [String] = ["Istanbul","Ankara","Trabzon","Izmir","Adana","Samsun","Hatay","Balikesir","Çanakkale","Bursa","Gazi Antep","Kahraman Maras","Eskisehir","Sakarya","Kocaeli"]
print(country)
var results = country.filter({$0.lowercased().contains("an".lowercased())})
print(results)
var result = country.filter({$0.lowercased().contains("an".lowercased())}).first ?? ""
print(result)
```
```
["Istanbul", "Ankara", "Trabzon", "Izmir", "Adana", "Samsun", "Hatay", "Balikesir", "Çanakkale", "Bursa", "Gazi Antep", "Kahraman Maras", "Eskisehir", "Sakarya", "Kocaeli"]
["Istanbul", "Ankara", "Adana", "Çanakkale", "Gazi Antep", "Kahraman Maras"]
Istanbul
```
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
var result = numbers.filter({ $0 >= 4 })
print(result)
```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
[4, 5, 6, 7, 8, 9]
```

- Reduce
```swift
var numbers : [Int] = [0,1,2,3,4,5,6,7,8,9]
print(numbers)
var result = numbers.reduce(0,{ $0 + $1 })
print(result)
```
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
45
```
```swift
let languages = ["C","C++","Objective C","Swift"]
print(languages)
let count = languages.reduce(1) { $0 + $1.count }
print(count)
```
```
["C","C++","Objective C","Swift"]
21
```

- Map
```swift
var numbers : [Double] = [13.0,3.0,2.0,1.0,5.0,8.0,1.0,21.0]
print(numbers)

var map = (numbers.map({$0 * 3.14}))
print(map)

var sort = (numbers.map({$0 * 3.14}).sorted(by: {$0 < $1}))
print(sort)

var filter = (numbers.map({$0 * 3.14}).sorted(by: {$0 < $1}).filter({ $0 > 6.5}))
print(filter)
```
```
[13.0, 3.0, 2.0, 1.0, 5.0, 8.0, 1.0, 21.0]
[40.82, 9.42, 6.28, 3.14, 15.700000000000001, 25.12, 3.14, 65.94]
[3.14, 3.14, 6.28, 9.42, 15.700000000000001, 25.12, 40.82, 65.94]
[9.42, 15.700000000000001, 25.12, 40.82, 65.94]
```
