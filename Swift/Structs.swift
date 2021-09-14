import UIKit

struct Language {
    var name : String
    var country : String
    var family : String
    
    // Degistirilebilir.
    mutating func mutatingCountry(){
        self.country = "\(country) Rep."
    }
}

var german = Language(name : "German", country: "Germany, Austria", family : "Hint-Europe")
let turkish = Language(name : "Turkish", country: "Turkey", family: "Altai")

print("\(german.name) \(german.country) \(german.family)")
german.mutatingCountry()
print("\(german.name) \(german.country) \(german.family)")
