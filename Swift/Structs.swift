struct Language {
    var name : String
    var country : String
    var family : String
    
    // Degistirilebilir. Belirli bir yöntemde yapısal değişiklik yapılmak istenirse kullanılır.
    mutating func mutatingCountry(){
        self.country = "\(country) Rep."
    }
}

var german = Language(name : "German", country: "Germany, Austria", family : "Hint-Europe")
var russia = Language(name : "Russian", country: "Russia", family : "Hint-Europe")
let turkish = Language(name : "Turkish", country: "Turkey", family: "Altai")

print("\(german.name) \(german.country) \(german.family)")
russia.mutatingCountry()
print("\(russia.name) \(russia.country) \(russia.family)")
