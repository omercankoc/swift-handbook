# Dictionaries

- Declaration
```swift
var country: [String: String] = ["USA":"Washington DC","UK":"London","France":"Paris","Italy":"Rome","Spain":"Madrid","Portugal":"Lizbon","Greece":"Atina","Russia":"Moscow","Sweden":"Stockholm","Norway":"Oslo","Finland":"Helsinki","Poland":"Warsaw","Ukraine":"Kyiv"]
```
```swift
var country: Dictionary<String, String> = ["USA":"Washington DC","UK":"London","France":"Paris","Italy":"Rome","Spain":"Madrid","Portugal":"Lizbon","Greece":"Atina","Russia":"Moscow","Sweden":"Stockholm","Norway":"Oslo","Finland":"Helsinki","Poland":"Warsaw","Ukraine":"Kyiv"]
```
```swift
var country: [String: String] = [:]
```
```swift
var country: Dictionary<String, String> = [:]
```

- Add Key-Value
```swift
country["Japan"] = "Tokyo"
print(country)
```
```
["Norway": "Oslo", "Japan": "Tokyo", "Sweden": "Stockholm", "Poland": "Warsaw", "Italy": "Rome", "Ukraine": "Kyiv", "Greece": "Atina", "Finland": "Helsinki", "UK": "London", "Portugal": "Lizbon", "USA": "Washington DC", "France": "Paris", "Russia": "Moscow", "Spain": "Madrid"]
```

- Elements in Dictionary
```swift
for (key,value) in country {
    print(key, value)
}
```
```
France Paris
UK London
Norway Oslo
Sweden Stockholm
USA Washington DC
Italy Rome
Spain Madrid
Russia Moscow
Finland Helsinki
Poland Warsaw
Ukraine Kyiv
Portugal Lizbon
Greece Atina
```

- Enumerated Elements in Dictionary
```swift
for (index,item) in country.enumerated() {
    print(index, item.key, item.value)
}
```
```
0 Spain Madrid
1 Sweden Stockholm
2 USA Washington DC
3 Norway Oslo
4 Portugal Lizbon
5 Russia Moscow
6 UK London
7 Ukraine Kyiv
8 Poland Warsaw
9 Greece Atina
10 Italy Rome
11 France Paris
12 Finland Helsinki
```

- Get Keys
```swift
let keys = country.keys
print(keys)
```
```
["Greece", "Italy", "Spain", "UK", "Portugal", "Finland", "Poland", "USA", "Ukraine", "Russia", "France", "Sweden", "Norway"]
```
- Get Values
```swift
let values = country.values
print(values)
```
```
["Atina", "Rome", "Madrid", "London", "Lizbon", "Helsinki", "Warsaw", "Washington DC", "Kyiv", "Moscow", "Paris", "Stockholm", "Oslo"]
```

## Methods

- Count
```swift
languages.count
```
```
5
```

- Is Empty
```swift
languages.isEmpty
```
```
false
```

- Update Value
```swift
country.updateValue("Athens", forKey: "Greece")
print(country)
```
```
["USA": "Washington DC", "Sweden": "Stockholm", "France": "Paris", "UK": "London", "Norway": "Oslo", "Ukraine": "Kyiv", "Greece": "Athens", "Spain": "Madrid", "Portugal": "Lizbon", "Italy": "Rome", "Finland": "Helsinki", "Poland": "Warsaw", "Russia": "Moscow"]
```

- Remove Value
```swift
country.removeValue(forKey: "Finland")
print(country)
```
```
["UK": "London", "USA": "Washington DC", "Portugal": "Lizbon", "Greece": "Atina", "Sweden": "Stockholm", "Russia": "Moscow", "Poland": "Warsaw", "Spain": "Madrid", "France": "Paris", "Italy": "Rome", "Norway": "Oslo", "Ukraine": "Kyiv"]
```

- Max
```swift
var max = country.max(by: {$0.key.count < $1.key.count})
print(max ?? ["":""])
```
```
(key: "Portugal", value: "Lizbon")
```

- Min
```swift
var min = country.min(by: {$0.key.count < $1.key.count})
print(min ?? ["":""])
```
```
UK London
```

- Contains
```swift
var contain = country.contains(where: {$0.key.lowercased() == "italy".lowercased()})
print(contain)
```
```
true
```

- First
```swift
var first = country.first
print(first ?? ["":""])
```
```
(key: "UK", value: "London")
```
```swift
var first = country.first(where: {$0.key.lowercased() == "italy".lowercased()})
print(first ?? ["":""])
```
```
(key: "Italy", value: "Rome")
```
```swift
var first = country.first(where: {$0.key.lowercased().contains("land".lowercased())})
print(first ?? ["":""])
```
```
(key: "Poland", value: "Warsaw")
```
```swift
var first = country.first(where: {$0.key.lowercased().hasPrefix("s".lowercased())})
print(first ?? ["":""])
```
```
(key: "Sweden", value: "Stockholm")
```
```swift
var first = country.first(where: {$0.key.lowercased().hasSuffix("e".lowercased())})
print(first ?? ["":""])
```
```
(key: "France", value: "Paris")
```

- Filter
```swift
var filter = country.filter({$0.key.lowercased().hasPrefix("u")})
print(filter)
var first = filter.first
print(first ?? ["":""])
```
```
["USA": "Washington DC", "UK": "London", "Ukraine": "Kyiv"]
(key: "USA", value: "Washington DC")
```
```swift
var filter = country.filter({$0.key.lowercased().hasSuffix("land")})
print(filter)
var first = filter.first
print(first ?? ["":""])
```
```
["Poland": "Warsaw", "Finland": "Helsinki"]
(key: "Poland", value: "Warsaw")
```
```swift
var filter = country.filter({$0.key.lowercased().contains("an")})
print(filter)
var first = filter.first
print(first ?? ["":""])
```
```
["Poland": "Warsaw", "France": "Paris", "Finland": "Helsinki"]
(key: "Poland", value: "Warsaw")
```

- Mapping
```swift
var mapping = country.mapValues({ $0 + " City" })
print(mapping)
```
```
["UK": "London City", "Greece": "Atina City", "Portugal": "Lizbon City", "Norway": "Oslo City", "Spain": "Madrid City", "Sweden": "Stockholm City", "Italy": "Rome City", "USA": "Washington DC City", "Russia": "Moscow City", "Ukraine": "Kyiv City", "France": "Paris City", "Poland": "Warsaw City", "Finland": "Helsinki City"]
```
