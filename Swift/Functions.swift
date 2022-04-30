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

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

Message()
Message(name : "Omer")
Message(name : "Omer", surname : "Koc")
print(Calculate(base : 2,exponent : 2))
var exponent = Calculate(base: 3, exponent: 3)
print(exponent)

print(minMax(array: [1,1,2,3,5,8,13,21]))
