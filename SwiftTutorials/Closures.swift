import UIKit

// Closures: Ismi olmayan, parametre alıp geriye değer döndüren, bir değişkende saklanabilen,
// fonksiyona parametre olarak geçilebilen bir kod blogudur fonksiyondur.

let modulus = {
    (val1 : Int, val2 : Int) -> Int in
    return val1 % val2
}

let mod = modulus(43,22)
print("Modulus : ",mod)
