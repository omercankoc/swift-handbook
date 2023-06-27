# Conditional Statements

```swift
var midterm : Float = 65
var final : Float = 55
var score : Float = (midterm + final)/2

var modulus = Int(score) % 2
```

### if - else - else if Statements 
```swift
if(final >= 50){
    if(score >= 50 && score < 55){
        print("DC")
    } else if(score >= 55 && score < 60){
        print("DD")
    } else if(score >= 60 && score < 68){
        print("CC")
    } else if(score >= 68 && score < 76){
        print("CB")
    } else if(score >= 76 && score < 84){
        print("BB")
    } else if(score >= 84 && score < 92){
        print("BA")
    } else if (score >= 92 && score <= 100){
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

### switch - case Statements
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
### guard let Statement
It is used to specify the actions to be taken if the condition is not met.

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

### if let Statement
It is used to separately specify the actions to be taken when the condition is met and when it is not met.

```swift
var isNumeric = "5"
var notNumeric = "O"

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
