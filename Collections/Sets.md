# Sets
A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important (Unordered Collection), or when you need to ensure that an item only appears once (Unique).

## Defination and Initialize a Set
- Defining a static set without specifying the type
``` swift
var numbers : Set = [0,2,4,6,8,1,3,5,7,9]
var languages : Set = ["C","Objective-C","C++"]
``` 
- Define a static set by specifying the type
``` swift
var numbers : Set<Int> = [0,2,4,6,8,1,3,5,7,9]
var odd : Set<Int> = [1,3,5,7,9]
var even : Set<Int> = [0,2,4,6,8]
var prime : Set<Int> = [2,3,5,7]
``` 
- Creating and Initializing an Empty Set
``` swift
var languages : Set<String> = []
var numbers : Set<Int> = []
```
## Methods
- Insert element
``` swift
languages.insert("Swift")
```
```
["Objective-C", "C", "C++", "Swift"]
```
- Remove the specified Set Element
``` swift
languages.remove("Swift")
```
```
["Objective-C", "C", "C++"]
```
- Remove all Set Elements
``` swift
languages.removeAll()
```
```
[]
```
- Remove the First Element of the Set Elements
``` swift
languages.removeFirst()
```
```
["C++", "C"]
```
- Returns the count of elements in the Set
``` swift
languages.count()
```
```
3
```
- Add the give item to the Set
``` swift
numbers.update(with: 10)
```
```
[9, 6, 3, 8, 2, 7, 10, 1, 0, 4, 5]
```
- Returns the maximum numeric value in the Set
``` swift
numbers.max()
```
```
9
```
- Returns the minimum numeric value in the Set
``` swift
numbers.min()
```
```
0
```
- Returns true if the set is not empty, false otherwise
``` swift
numbers.isEmpty
```
```
false
```
- Sort the elements of the set in a specific order (ascending or descending)
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
- Changes the positions of the elements randomly
``` swift
numbers.shuffled()
``` 
```
[8, 5, 0, 3, 6, 2, 9, 7, 4, 1]
``` 
- Obtaining the elements in the set that satisfy the condition
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
