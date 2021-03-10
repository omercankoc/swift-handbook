import UIKit

// Set'lerde indexleme yoktur. (Unordered Collection)
// Ayni elemani birden fazla kez tutmaya izin vermez. (Unique)
var squares : Set = [1,4,9,16,25,36,49,64,81,100]
var index : Int = 1

var first : Set = [1,2,3,5,8]
var second : Set = [0,2,4,6,8]
var third : Set = [1,3,5,7,9]

// Eleman Sayisini Dondur...
print("Count:",squares.count)

// Eleman ekle...
squares.insert(11)
for item in squares.sorted(){
    print(item)
}

// Deger var mi?
print("Is Empty : ",squares.isEmpty)

// Eleman Sil...
squares.remove(11)
for item in squares.sorted(){
    print(item)
}

// Belirtilen degeri iceriyor mu?
print("Contains 4 = ",squares.contains(4))

for square in squares.sorted(){
    print(index,"^2=",square)
    index+=1
}

// Set Operasyonlari:
// Union : Iki Set nesnesini birlestir ve ayni olanlari ayikla.
var unionSet = third.union(first).sorted()
print("Union Set : ")
for item in unionSet.sorted(){
    print(item)
}

// Intersection : Iki set nesnesinin ortak elemanlarini elde et.
var intersectionSet = third.intersection(first).sorted()
print("Intersection Set : ")
for item in intersectionSet.sorted(){
    print(item)
}

// Subtracting : Iki Set nesnesinin farkli elemanlarini elde et.
var subtractingSet = second.subtracting(first).sorted();
print("Substraacting Set : ")
for item in subtractingSet.sorted(){
    print(item)
}
