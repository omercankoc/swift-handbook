import UIKit

// Parametresiz fonksiyon
func Message(){
    print("Hello Swift!")
}

// Method Overloading
func Message(name : String){
    print("Hello",name)
}

// Method Overloading
func Message(name : String, surname : String){
  print("Hello",name,surname)
}

func Calculate(base : Int, exponent : Int) -> Int {
    var result : Int = 1
    var iterator : Int = 1
    while iterator <= exponent{
        result *= base
        iterator += 1
    }
    return result
}

Message()
Message(name : "Omer")
Message(name : "Omer", surname : "Koc")
print(Calculate(base : 2,exponent : 2))
var exponent = Calculate(base: 3, exponent: 3)
print(exponent)
