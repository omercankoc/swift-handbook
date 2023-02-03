# Loops
Loops are used to simplify repetitive coding tasks. Loop codes, which can also be described as repeating conditional statements, 
are used to repeat all pieces of code within a certain rule loop.

Let's define the variables we will use for the examples.
```swift
var base : [Int] = []

var limit : Int = 10
var iterator : Int = 0
var repeater : Int = 0
```

## While Loop
while loop is used to repeat all pieces of code within a given rule loop. 
The point to note is that when the while loop is used, the code must at some point give a FALSE result. 
If this condition is not met, the code continues to repeat indefinitely.

```swift
while iterator <= limit {
    
    if(iterator == 10){
        break;
    }
    base.append(iterator)
    iterator+=1
}
```
## For Loop
The for loop differs from the while loop in that it acts on a number of variables simultaneously.

```swift
for item in base{
    
    if(item == 5){
        continue;
    }
    print(item,"^2 =",base[item]*base[item])
}
```

Get values between two values.
```swift
for index in 0...limit {
    print(index) 
}
```
```
0 1 2 3 4 5 6 7 8 9 10
```

Get values between a value and expression.
```swift
for index in 0..<limit {
    print(index)
}
```
```
0 1 2 3 4 5 6 7 8 9
```

Set the start value of the loop.
```swift
for index in base[2...]{
    print(index)
}
```
```
2 3 4 5 6 7 8 9
```

Set the end value of the loop.
```swift
for index in base[...5]{
    print(index)
}
```
```
0 1 2 3 4 5
```
Get values spaced between start and end value.
```swift
for index in stride(from: 0, to: 60, by: 10){
    print(index)
}
```
```
0 10 20 30 40 50
```

## Repeat-While Loop
Unlike the while loop, there is a repeat keyword. 
In the Reapeat-While loop, we have the same condition as in the while loop, and as long as this condition is met, the operations in the repeat block are performed. 
When the condition is not met, the block exits and the program continues. 
The important difference here is that the repeat block will be run and then it will be checked whether our condition is true or false. 
This means that whether the condition is true or not, the repeat block will run at least once. This is a very important difference.
```swift
repeat {
    repeater += limit
    print(repeater) // 10 ... 110
} while (repeater <= limit*limit)
```
```
10 20 30 40 50 60 70 80 90 100 110
```
## ForEach
It allows you to navigate the array and replace elements in a short time, and in some cases faster than the regular for loop.
```swift
var os : [String] = ["iOS","iPadOS","macOS","watchOS","tvOS"]
os.forEach { item in print("\(item)") }
```
```
iOS iPadOS macOS watchOS tvOS
```
