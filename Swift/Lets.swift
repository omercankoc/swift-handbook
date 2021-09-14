import UIKit

// Guard Let -> Negative
// If Let -> Positive

var toNumeric = "5"
var notNumeric = "O"

func convertToIntegerGuard(value : String) -> Int {
    guard let result = Int(value) else {
        return 1
    }
    return result
}

func convertToIntegerIf(value : String) -> Int {
    if let result = Int(value) {
        return result
    } else {
        return 1
    }
}

print(convertToIntegerIf(value: toNumeric))
print(convertToIntegerIf(value: notNumeric))
print(convertToIntegerGuard(value: toNumeric))
print(convertToIntegerGuard(value: notNumeric))
