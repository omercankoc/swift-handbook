import UIKit

var str = "Hello, Swift!"
print(str)

// Degisken Tanimlama Yontemleri:
// var/let variableName = value -> definition and initialization
// var/let variableName : variableType -> definition
// var/let variableName : variableType = value -> definition and initialization

// var : degisken tanimlamak icin kullanilir. (mutable)
var mutableVariable : String = "iOS"
print("Mutable -> var mutableValue : String = \(mutableVariable)")

// let : sabit tanimlamak icin kullanilir. (inmutable)
let inmutableValue : String = "Swift"
print("Imutable -> var inmutableValue : String = \(inmutableValue)")

// Integer
var count : Int = 9
print("Integer to Float : \(Float(count))")   // Integer to Float
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

// String:
var developer : String = "Ko"

if(developer.isEmpty){
    print("String is null!")
} else {
    print("String is not null!")
}

developer.append("c") // sonuna c harfini ekler.
developer.lowercased() // string degerinin her bir elemanini kucuk harf yapar.
developer.uppercased() // string degerinin her bir elemanini buyuk harf yapar.

// Typealias: Mevcut bir tipe yeni bir isim atamak icin kullanilir. (typealias newname : type)
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
