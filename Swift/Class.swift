import UIKit

enum LanguageType {
    case Scripting
    case Compiled
}

class Languages {
    //Properties
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    // Initializer or Constructor
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
