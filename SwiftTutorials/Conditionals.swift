import UIKit

var midterm : Float = 65
var final : Float = 55
var mean : Float = (midterm + final)/2

if(final >= 50){
    if(mean >= 50 && mean < 55){
        print("DC")
    } else if(mean >= 55 && mean < 60){
        print("DD")
    } else if(mean >= 60 && mean < 68){
        print("CC")
    } else if(mean >= 68 && mean < 76){
        print("CB")
    } else if(mean >= 76 && mean < 84){
        print("BB")
    } else if(mean >= 84 && mean < 92){
        print("BA")
    } else if (mean >= 92 && mean <= 100){
        print("AA")
    }
}
else {
   print("FF")
}
