// Enum : Bir değişken için bir grup değer tanıma biçimidir. Kalıtım yoluyla özellik alabilir.
enum LanguageType {
    case Scripting
    case Compiled
    // indirect case virtual(language) -> Derleme zamanı çalıştırma, atama sonrası çalıştır. Bu bir değerdir.
}

class Languages { // Sınıflar bir referans türleridir.    
    
    //Properties : Nesne ile oluşturulan bir objenin parçasıdır.
    
    // lazy var value = listener() -> İlk kullanıma kadar değer almaması için "lazy" kullanılır.
    
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    // Initializer : 
    init(initLanguage : String, initDeveloper : String, initYear : Int, initType : LanguageType) {
        language = initLanguage
        developer = initDeveloper
        year = initYear
        type = initType
        
        print("Created Language Object!")
    }   
}

let kotlin = Languages(initLanguage: "Kotlin", initDeveloper: "JetBrains", initYear: 2014, initType: .Compiled)
print("\(kotlin.language) \(kotlin.developer) \(kotlin.year)")
