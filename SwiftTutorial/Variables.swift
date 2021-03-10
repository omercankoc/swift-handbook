import UIKit

var str = "Hello, Swift!"
print(str)

// Degisken Tanimlama Yontemleri:
// var/let variableName = value
// var/let variableName : variableType
// var/let variableName : variableType = value

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
developer.append("c") // sonuna c harfini ekle.
developer.lowercased() // string degerinin her bir elemanini kucuk harf yap.
developer.uppercased() // string degerinin her bir elemanini buyuk harf yap.

// Typealias: Mevcut bir tipe yeni bir isim atamak icin kullanilir. (typealias newname : type)
typealias Angle = Double
var angle : Angle = 60.0;
print("Angle = " , angle)
