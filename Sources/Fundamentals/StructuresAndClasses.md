## Struct

1. Computed ve Stored propertyler tanımlanabilir.
2. Method ve Closure ile işlevsellik eklenebilir.
3. Başlangıç durumları ayarlanabilir (init).
4. Extension ile yeni işlevler eklenebilir.
5. Protokollerle çalışabilirler.
6. Değer türüdürler. Her örnek benzersiz bir kopya depolar. Belleğin STACK alanında depolanırlar. (Int, Float, Double, String, Tuple, Array, Set, Dictionary, Enum)
7. Atomiktirler. Birden fazla iş parçacığının aynı anda tek bir kaynağa erişmesi durumunda ortaya çıkabilecek tutarsızlıkları önlemek için kaynağın ve o kaynağı kullanan tüm iş parçacıklarının güvenliğini sağlayan bir kavramdır.

- Declaration
```swift
struct Sphere {
    var radius: Double
    var area: Double?
    var volume: Double?
    
    mutating func surfaceAreaOfSphere(){
        self.area = 4 * Double.pi * pow(radius,2)
    }
    
    mutating func volumeOfSphere(){
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 2)

sphere.surfaceAreaOfSphere()
sphere.volumeOfSphere()
```
```
Sphere(radius: 2.0, area: nil, volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: Optional(33.510321638291124))
```

## Class

1. Computed ve Stored propertyler tanımlanabilir.
2. Method ve Closure ile işlevsellik eklenebilir.
3. Başlangıç durumları (init) ve deallocate öncesi durumları ayarlanabilir (deinit).
4. Extension ile yeni işlevler eklenebilir.
5. Protokollerle çalışabilirler.
6. Kalıtım, bir sınıfın başka bir sınıfın özelliklerini ve yöntemlerini miras almasına izin verir.
7. Referans türüdürler. Her örnek aynı referansdan kopyalanır. REFERENCE, belleğin STACK alanında saklanır. OBJECT, belleğin HEAP alanında saklanır. STACK statik belleği ayırmak için kullanılırken, HEAP dinamik belleği ayırmak için kullanılır.


- Declaration
```swift
class Sphere {
    var radius: Double = 0.0
    var area: Double?
    var volume: Double?
    
    func surfaceAreaOfSphere(){
        self.area = 4 * Double.pi * pow(radius,2)
    }
    
    func volumeOfSphere(){
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```

- Instance
```swift
var sphere = Sphere()

sphere.radius = 2

sphere.surfaceAreaOfSphere()
sphere.volumeOfSphere()
```
```
0.0 nil nil
2.0 nil nil
2.0 Optional(50.26548245743669) nil
2.0 Optional(50.26548245743669) Optional(33.510321638291124)
```

## Initialization and Deinitialization
Initialization, bir class, enum veya struct instance'ı oluşturduğumuzdaki hazırlık sürecidir. Bu süreç, her depolanan özellik için bir başlangıç ​​değeri ayarlanmasına ve kullanıma hazır hale gelmeden önce gerekli işlemlerin gerçekleştirilmesine olanak tanır.

Deinitialization, nesnenin Otomatik Referans Sayacı (ARC) mekanizması tarafından yığından yok edilmesinden (deallocate) hemen önce çağrılmasıdır. Geri dönüş değeri yoktur. Yalnızca class ile kullanılır.

- Declaration
```swift
class Sphere {
    var radius: Double
    var area: Double
    var volume: Double
    
    convenience init() {
        self.init(radius: 0.0)
    }
    
    init(radius: Double) {
        self.radius = radius
        self.area = 4 * Double.pi * pow(radius,2)
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
    }
    
    deinit {
        self.radius = 0.0
        self.area = 0.0
        self.volume = 0.0
    }
}
```

- Instance
```swift
var sphere = Sphere(radius: 2)
```
```
2.0 50.26548245743669 33.510321638291124
```
```swift
var sphere = Sphere()
```
```
0.0 0.0 0.0
```

### Initialization Parameters

- Declaration
```swift
class Sphere {
    var result: Double

    init(area radius: Double){
        self.result = 4 * Double.pi * pow(radius,2)
    }
    
    init(volume radius: Double){
        self.result = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```

- Instance
```swift
var area = Sphere(area: 2)
var volume = Sphere(volume: 2)
```
```
50.26548245743669 33.510321638291124
```

## Composition
Nesneleri daha karmaşık olanlara birleştirmenin yollarıyla yakından ilgilidir. Bir sahiplik (Has-A) ilişkisi vardır.

```swift
struct Radius {
    var radius: Double
    var diameter: Double
    
    init(radius: Double){
        self.radius = radius
        self.diameter = radius * 2
    }
}

struct Sphere {
    var radius: Radius
    var area: Double
    var volume: Double
    
    init(radius: Radius) {
        self.radius = radius
        self.area = 4 * Double.pi * pow(radius.radius,2)
        self.volume = (4 / 3) * Double.pi * pow(radius.radius,3)
    }
}
```
```swift
var sphere = Sphere(radius: Radius(radius: 2))
```
```
Sphere(radius: Radius(radius: 2.0, diameter: 4.0), area: 50.26548245743669, volume: 33.510321638291124)
```

## Access Control

1. Private: Tanımladığımız bir property veya method, tanımlandığı kapsam (Class, Struct, Enum) dışında kullanılamaz hale getirir.
2. File Private: Tanımladığımız bir property veya method, tanımlandığı dosya dışında kullanılamaz hale getirir.
3. Internal: Normalde bir property tanımladığınızda, varsayılan olarak “internal” kullanır. “Internal” öğesiyle tanımlanan propertyler veya methodlar “Target” içindeki herhangi bir yerde kullanılabilir.
4. Open: “open” öğesi “framework”lerde kullanılan bir öğedir. Örnek olarak UIKit “framework”ü verebiliriz. Bir “UIViewController”
öğesine tıklayıp “Jump to Definition”a tıklarsanız, oradaki çoğu sınıfın, propertynin ve methodun başında bir “open” öğesi olduğunu göreceksiniz. “open” ile tanımlanan bir method veya property'ye erişmek için öncelikle modülün alt sınıfına girmemiz gerekir.
5. Public: “public” öğesi “open” öğesine çok benzer. Aralarındaki en büyük fark, -UIViewController öğesini kullandığımız gibi “open” ile tanımladığımız öğeleri modülün dışında (örneğin: UIKit) kullanabilmemize rağmen, “public” ile tanımladığımız öğeleri modülün dışında kullanamamamızdır.
