# Conditionals
Swift provides two ways to add conditional branches to your code: the if statement and the switch statement. 
Typically, you use the if statement to evaluate simple conditions with only a few possible outcomes. 
The switch statement is better suited to more complex conditions with multiple possible permutations and is useful in situations 
where pattern matching can help select an appropriate code branch to execute.

Let's define the variables we will use first.
```swift
var midterm : Float = 65
var final : Float = 55
var score : Float = (midterm + final)/2

var modulus = Int(score) % 2
```

## if - else - else if Statements 
In its simplest form, the "if" works when the desired condition is met. 
Otherwise, it works when the "else if" conditions are met. 
The "else" operation runs when no conditions are met.
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

## switch - case Statements
It is preferable to use a switch-case statement instead of writing if-else blocks one by one depending on the status of only one variable, 
according to the value of that variable.
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
