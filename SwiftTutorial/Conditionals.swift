import UIKit

var midterm : Float = 65
var final : Float = 55
var score : Float = (midterm + final)/2

var modulus = Int(score) % 2

if(final >= 50){
    if(score >= 50 && score < 55){
        print("DC")
    } else if(score >= 55 && score < 60){
        print("DD")
    } else if(score >= 60 && score < 68){
        print("CC")
    } else if(score >= 68 && score < 76){
        print("CB")
    } else if(score >= 76 && score < 84){
        print("BB")
    } else if(score >= 84 && score < 92){
        print("BA")
    } else if (score >= 92 && score <= 100){
        print("AA")
    }
}
else {
   print("FF")
}

switch modulus {
    case 0:
        print("Even")
        break // Bu kosul saglandiginda donguyu kir...
    case 1:
        print("Odd")
        break // Bu kosul saglandiginda donguyu kir...
    default:
        print("ANY!")
}
