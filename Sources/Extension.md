## Extension (CLASSES, STRUCTURES, ENUMERATIONS OR PROTOCOLS)

- Extension for Variables
```swift
typealias Meter = Double

extension Meter {
    var km : Double { return self / 1000.0 }
    var hm : Double { return self / 100.0 }
    var dam : Double { return self / 10.0 }
    var m : Double { return self * 1.0 }
    var dm : Double { return self * 10.0 }
    var cm : Double { return self * 100.0 }
    var mm : Double { return self * 1000.0 }
}

var m : Meter = 1
var km = m.km
var hm = m.hm
var dam = m.dam
var dm = m.dm
var cm = m.cm
var mm = m.mm

print(km,hm,dam,m,dm,cm,mm)
```
```
0.001 0.01 0.1 1.0 10.0 100.0 1000.0
```

- Extension for Functions
```swift
typealias Meter = Double

extension Meter {
    func conversion() -> (km: Double, hm: Double, dam: Double, dm: Double, cm: Double, mm: Double){
        return (self / 1000.0, self / 100.0, self / 10.0, self * 10.0, self * 100.0, self * 1000.0)
    }
}

var m : Meter = 1
var km = m.conversion().km
var hm = m.conversion().hm
var dam = m.conversion().dam
var dm = m.conversion().dm
var cm = m.conversion().cm
var mm = m.conversion().mm

print(km,hm,dam,m,dm,cm,mm)
```
```
0.001 0.01 0.1 1.0 10.0 100.0 1000.0
```
