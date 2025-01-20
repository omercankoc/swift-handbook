## Extension

Mevcut bir sınıfa, yapıya, numaralandırmaya veya protokol türüne yeni işlevler ekler. Kaynak koduna erişiminizin olmadığı türleri genişletme yeteneğini de içerir.

```swift
typealias Meter = Double

extension Meter {
    var km: Double { return self / 1000.0 }
    var hm: Double { return self / 100.0 }
    var dam: Double { return self / 10.0 }
    var m: Double { return self * 1.0 }
    var dm: Double { return self * 10.0 }
    var cm: Double { return self * 100.0 }
    var mm: Double { return self * 1000.0 }
}

var m: Meter = 1
print(m.km,m.hm,m.dam,m,m.dm,m.cm,m.mm)
```
```
0.001 0.01 0.1 1.0 10.0 100.0 1000.0
```

```swift
typealias Meter = Double

extension Meter {
    func conversion() -> (km: Double, hm: Double, dam: Double, dm: Double, cm: Double, mm: Double){
        return (self / 1000.0, self / 100.0, self / 10.0, self * 10.0, self * 100.0, self * 1000.0)
    }
}

var m: Meter = 1
print(m.conversion().km, m.conversion().hm, m.conversion().dam ,m ,m.conversion().dm, m.conversion().cm, m.conversion().mm)
```
```
0.001 0.01 0.1 1.0 10.0 100.0 1000.0
```
