## Definition
``` swift
var developer : String? = nil
var language : String = "Swift"
```

## Nullability Control
```swift
if(developer != nil){
    print(developer!)
} else {
    developer = "omercan"
}
```

## Show each character in the string.
```swift
for character in language {
    print(character)
}
```

## Append the letter C to the End.
```swift
developer?.append("koc")
```

## Makes each character of the string value Lowercase.
```swift
developer?.lowercased()
```

## Makes each character of the string value Uppercase.
```swift
developer?.uppercased()
```
