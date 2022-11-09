# Sets
A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important (Unordered Collection), or when you need to ensure that an item only appears once (Unique).

## Defination and Initialize a Set
Defining a static set without specifying the type
``` swift
var numbers : Set = [1,2,3,4,5,6,7,8,9]
``` 
Define a static set by specifying the type.
``` swift
var numbers : Set<Int> = [2,3,5,1,4,0,6,9,7,8]
var odd : Set<Int> = [1,3,5,7,9]
var even : Set<Int> = [0,2,4,6,8]
var prime : Set<Int> = [2,3,5,7]
``` 
Creating and Initializing an Empty Set.
``` swift
var languages : Set<String> = []
```
## Methods
1. Insert : Insert element.
``` swift
languages.insert("Swift")
```
2. Remove : Deletes the specified Set element.
``` swift
languages.remove("Swift")
``` 
3. Remove All : Deletes all Set elements.
``` swift
languages.removeAll()
``` 
4. Remove First : Deletes the first element of the set elements.
``` swift
languages.removeFirst()
``` 
5. Count : Returns the number of elements in the set.
``` swift
languages.count()
```
```
4
```
6. Max : Returns the maximum numeric value in the set.
``` swift
odd.max()
```
```
9
```
7. Min : Returns the minimum numeric value in the set.
``` swift
odd.min()
```
```
1
```
8. Is Empty : Returns true if the Set object is empty, false otherwise.
``` swift
odd.isEmpty
```
```
false
```
9. Filter : It is a method of obtaining the elements that satisfy the condition in the set.
``` swift
numbers.filter({$0>5})
``` 
```
[6,7,8,9]
```
```swift
languages.filter({$0.hasPrefix("S")})
```
```
["Swift"]
```
10. Form Union : Combines the elements of two sets and adds the same ones once.
``` swift
odd.formUnion(prime)
``` 
```
[2, 3, 5, 7, 1, 9]
``` 
11. Is Subset : This method method returns true if all elements of a set are present in another set. If not, it returns false.
``` swift
odd.isSubset(of: prime)
``` 
```
false
``` 
12. Is Superset : This method method returns true if a set has every element of another set. If not, it returns false.
``` swift
odd.isSuperset(of: prime)
``` 
```
false
``` 
13. Shuffed : Changes the positions of the elements randomly.
``` swift
odd.shuffed()
``` 
```
[5, 9, 7, 3, 1]
``` 
14. Sort : This method sorts the items of the set in a specific order (ascending or descending).
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
15. Update : This method inserts the given element in the set.
``` swift
numbers.update(with: 0)
```
16. Union : Combine two Set Objects and subtract identical items.
``` swift
var numbers = odd.union(even).sorted()
``` 
```
[0,1,2,3,4,5,6,7,8,9]
``` 
17. Intersection : This method returns the intersection values between two sets.
``` swift
var intersection = even.intersection(prime)
``` 
```
2
``` 
18. Subtract : This method returns the set difference between two sets.
``` swift
var subtract = odd.subtracting(prime)
``` 
```
[1,9]
``` 
