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
    
    func speak() {
       print("Hello World!")
    }
}

class Swift : Languages {
    func message(){
        print("Swift Programming Languages")
    }
    //
    override func speak() {
        super.speak()
        print("Hello Swift!")
    }
}

let swift = Swift(initLanguage: "Swift", initDeveloper: "Apple", initYear: 2011, initType: .Compiled)
print("\(swift.language) \(swift.developer) \(swift.year)")
swift.speak()
swift.message()
