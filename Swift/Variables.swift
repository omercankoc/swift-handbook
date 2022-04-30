// Degisken Tanimlama Yontemleri:
// 1 - var/let variableName = value -> definition and initialization
// 2 - var/let variableName : variableType -> definition
// 3 - var/let variableName : variableType = value -> definition and initialization

// var : Degisken tanimlamak icin kullanilir. (Mutable)
var mutableVariable : String = "iOS"
print("Mutable -> var mutableValue : String = \(mutableVariable)")

// let : Sabit tanimlamak icin kullanilir. (Inmutable)
let inmutableValue : String = "Swift"
print("Imutable -> var inmutableValue : String = \(inmutableValue)")

// Integer
var count : Int = 9
print("Integer to Float : \(Float(count))")   // Integer to Float Type
print("Integer to Double : \(Double(count))") // Integer to Double
print("Integer to String : \(String(count))") // Integer to String

// Float:
var euler : Float = 2.7182818
print("Float to Int : \(Int(euler))")         // Float to Integer
print("Float to Double : \(Double(euler))")   // Float to Double
print("Float to String : \(String(euler))")   // Float to String

// Double:
var pi : Double = 3.14159265358979
print("Double to Float : \(Float(pi))")      // Double to Float
print("Double to Double : \(Int(pi))")       // Double to Integer
print("Double to String : \(String(pi))")    // Double to String

// Bool:
var logic : Bool = true

// Typealias: Mevcut bir tipe yeni bir isim atamak icin kullanilir. (typealias newname : type)
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
