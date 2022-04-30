var base : [Int] = []

var limit : Int = 10
var iterator : Int = 0
var repeater : Int = 0

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

for index in 1...limit {
    print(index)
}

for index in base[2...]{
    print(index)
}

for index in base[...5]{
    print(index)
}

for index in 1..<limit {
    print(index)
}

for index in stride(from: 0, to: 60, by: 10){
    print(index) // 0 ... 50
}

// Repeat - While Loops:
repeat {
    repeater += limit
    print(repeater) // 10 ... 110
} while (repeater <= limit*limit)
