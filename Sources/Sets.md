# Set

- Declaration
``` swift
var numbers : Set = [0,2,4,6,8,1,3,5,7,9]
var languages : Set = ["C","Objective-C","C++"]
var odd : Set<Int> = [1,3,5,7,9]
var even : Set<Int> = [0,2,4,6,8]
var prime : Set<Int> = [2,3,5,7]
``` 
``` swift
var numbers : Set<Int> = []
var languages : Set<String> = []
```

## Methods

- Count
``` swift
languages.count()
```
```
3
```

- Is Empty
``` swift
numbers.isEmpty
```
```
false
```

- Insert
``` swift
languages.insert("Swift")
```
```
["Objective-C", "C", "C++", "Swift"]
```

- Remove
``` swift
languages.remove("Swift")
```
```
["Objective-C", "C", "C++"]
```

- Remove All
``` swift
languages.removeAll()
```
```
[]
```

- Remove First
``` swift
languages.removeFirst()
```
```
["C++", "C"]
```

- Update
``` swift
numbers.update(with: 10)
```
```
[9, 6, 3, 8, 2, 7, 10, 1, 0, 4, 5]
```

- Maximum
``` swift
numbers.max()
```
```
9
```

- Minimum
``` swift
numbers.min()
```
```
0
```

- Sorted
``` swift
numbers.sorted(by: >)
``` 
```
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
``` 
``` swift
numbers.sorted(by: <)
``` 
```
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

- Shuffled
``` swift
numbers.shuffled()
``` 
```
[8, 5, 0, 3, 6, 2, 9, 7, 4, 1]
``` 

- Filter
``` swift
numbers.filter({$0>5})
``` 
```
[8, 9, 6, 7]
```
```swift
languages.filter({$0.hasPrefix("C")})
```
```
["C", "C++"]
```

- A∪B
``` swift
var union = odd.union(even)
``` 
```
[2, 9, 4, 3, 5, 1, 7, 6, 0, 8]
```

- A∩B
``` swift
var intersection = odd.intersection(prime)
``` 
```
[5, 3, 7]
```

- A\B
``` swift
var subtracting = odd.subtracting(prime)
``` 
```
[1,9]
```

- (A\B)∪(B\A)
``` swift
var symmetricDifference = odd.symmetricDifference(prime)
``` 
```
[1, 2, 9]
```  

- B⊂A
``` swift
var subset = even.isSubset(of: numbers)
``` 
```
true
``` 

- A⊃B
``` swift
var superset = numbers.isSuperset(of: even)
``` 
```
true
```
