import UIKit

var fibonacci = (1,1,2,3,5,8,0,[1,1,2,3])
print(fibonacci.0)
fibonacci.6 = 13
print(fibonacci.6)
print(fibonacci.7)

var nameSurname : (String, String)
nameSurname.0 = "Omer"
nameSurname.1 = "Koc"

print("\(nameSurname.0) \(nameSurname.1)")
