import UIKit

var base : [Int] = []

var limit : Int = 10
var iterator : Int = 0

// While Loop:
while iterator <= limit {
    
    //Iterator 10 degerine esit ise donguyu kes.
    if(iterator == 10){
        break;
    }
    base.append(iterator)
    iterator+=1
}

// For Loop:
for item in base{
    
    // Item 5 degerine esit ise bu degeri islemeyi atla.
    if(item == 5){
        continue;
    }
    print(item,"^2 =",base[item]*base[item])
}
