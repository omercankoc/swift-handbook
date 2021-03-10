import UIKit

var base : [Int] = []

var limit : Int = 10
var iterator : Int = 0

// While Loop:
while iterator <= limit{
    base.append(iterator)
    iterator+=1
}

// For Loop:
for item in base{
    print(item,"^2 =",base[item]*base[item])
}
