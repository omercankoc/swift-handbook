import UIKit

// Set'lerde indexleme yoktur. (unordered collection)
// Ayni elemani birden fazla kez tutmaya izin vermez. (unique)

var squares : Set = [1,4,9,16,25,36,49,64,81,100]
var index : Int = 1

print("Count:",squares.count)

squares.insert(11)

for square in squares.sorted(){
    print(index,"^2=",square)
    index+=1
}
