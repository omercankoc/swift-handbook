// Arithmetic Operators
let additionClousure = {
    (first : Int, second : Int) -> Int in
    return first + second
}

let subractionClousure = {
    (first : Int, second : Int) -> Int in
    return first - second
}

let multiplicationClousure = {
    (first : Int, second : Int) -> Int in
    return first * second
}

let divisionClousure = {
    (first : Int, second : Int) -> Int in
    return first / second
}

func modulus(first : Int, second : Int) -> Int {
    return first % second
}

let addition = additionClousure(6,4) // 10
let subraction = subractionClousure(6,4) // 2
let multiplication = multiplicationClousure(6,4) // 24
let division = divisionClousure(6,4) // 1

modulus(first: 6, second: 4)
