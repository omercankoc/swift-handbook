import UIKit

var str = "Hello, Swift!"
print(str)

// Degisken Tanimlama Yontemleri:
// var/let variableName = value -> definition and initialization
// var/let variableName : variableType -> definition
// var/let variableName : variableType = value -> definition and initialization

// var : degisken tanimlamak icin kullanilir. (mutable)
var language : String = "Swift"

// let : sabit tanimnlamak icin kullanilir. (inmutable)
let os : String = "iOS"

// Integer:
var integerValue : Int = 9

// Float:
var euler : Float = 2.7182

// Double:
var pi : Double = 3.1415

// Bool:
var logic : Bool = true

// String:
var developer : String = "Ko"
developer.append("c") // sonuna c harfini ekler.
developer.lowercased() // string degerinin her bir elemanini kucuk harf yapar.
developer.uppercased() // string degerinin her bir elemanini buyuk harf yapar.

// Typealias: Mevcut bir tipe yeni bir isim atamak icin kullanilir. (typealias newname : type)
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
