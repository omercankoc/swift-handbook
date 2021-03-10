import UIKit

// var/let someArray = [ArrayType]()
// var let arrayName : [ArrayType] = [x,y,z]
// var/let crossDataTypes = [1,"S",3.14] as [Any]

var programmingLanguages = [String]()
programmingLanguages.append("C")
programmingLanguages.append("C++")
programmingLanguages.append("Rust")
programmingLanguages.append("Go")
programmingLanguages.append("Kotlin")
programmingLanguages.append("Swift")

print("Count:",programmingLanguages.count - 1)
print("Last",programmingLanguages.last ?? "null")
print("Best Language is", programmingLanguages[0])

for language in programmingLanguages{
    print(language)
}
