### Sets do not have indexing (Unordered Collection) and it does not allow to keep the same element more than once (Unique).

## Definition:
``` 
var squares : Set = [1,4,9,16,25,36,49,64,81,100]
var first : Set = [1,2,3,5,8]
var second : Set = [0,2,4,6,8]
var third : Set = [1,3,5,7,9]
var index : Int = 1
``` 

## Get Element Count:
``` 
print("Count:",squares.count)
``` 

## Insert Element
``` 
squares.insert(11)
for item in squares.sorted(){
    print(item)
}
``` 

## Is Empty?
``` 
print("Is Empty : ",squares.isEmpty)
``` 

## Remove Element
``` 
squares.remove(11)
for item in squares.sorted(){
    print(item)
}
``` 

## Search Element in Set
``` 
print("Contains 4 = ",squares.contains(4))
``` 

``` 
for square in squares.sorted(){
    print(index,"^2=",square)
    index+=1
}
``` 

## Union : Union two Set Objects and subtract identical elements.
``` 
var unionSet = third.union(first).sorted()
print("Union Set : ")
for item in unionSet.sorted(){
    print(item)
}
``` 

## Intersection : Get the intersection elements of two Set Objects.
``` 
var intersectionSet = third.intersection(first).sorted()
print("Intersection Set : ")
for item in intersectionSet.sorted(){
    print(item)
}
``` 


## Subtracting : Get the subtacting elements of two Set Objects.
``` 
var subtractingSet = second.subtracting(first).sorted();
print("Substraacting Set : ")
for item in subtractingSet.sorted(){
    print(item)
}
```
