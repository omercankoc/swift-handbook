## Definition
```
var developer : String? = nil
var language : String = "Swift"
```

## Nullability Control
```
if(developer != nil){
    print(developer!)
} else {
    developer = "omercan"
}
```

## Show each character in the string.
```
for character in language {
    print(character)
}
```

## Append the letter C to the End.
```
developer?.append("koc")
```

## Makes each character of the string value Lowercase.
```
developer?.lowercased()
```

## Makes each character of the string value Uppercase.
```
developer?.uppercased()
```
