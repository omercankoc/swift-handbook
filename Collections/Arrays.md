
```swift
var os : [String] = ["ios","ipados","watchos","macos","tvos"]
for s in os{
    print(s)
}

var programmingLanguages : Array = [String]()
programmingLanguages.append("C")
programmingLanguages.append("C++")
programmingLanguages.append("Rust")
programmingLanguages.append("Go")
programmingLanguages.append("Kotlin")
programmingLanguages.append("Swift")

print("Count:",programmingLanguages.count)
print("Last",programmingLanguages.last ?? "null")
print("First",programmingLanguages.first ?? "null")
print("Sort Array",programmingLanguages.sorted())
print("Best Language is", programmingLanguages[0])

for language in programmingLanguages{
    print(language)
}
```
