# Concurrency
Bir iş parçacığı tamamlanmadan bir başka iş parçacığının yürütülmesi durumudur. İşlemci üzerinde birden fazla çekirdek bulunmaktadır ve her çekirdeğin ayrı birer işlem yürütebilmesi mümkündür. Bu doğrultuda bir iş parçacığı tamamlanmadan bir başka iş parçacığının yürütülmesi durumudur.

- Synchronous: İş parçacıklarının ardışık bir sıra ile adım adım yürütüldüğü programlama paradigmasıdır.
- Asynchronous: İş parçacıkları birbirini beklemeden ve birbirlerinin sonuçlarından bağımsız yürütüldüğü programlama paradigmasıdır.
- Thread: Bir işletim sistemi tarafından yürütülen en küçük işlem birimidir.
- Race Condition: Birden fazla iş parçacığının aynı anda tek kaynağa erişmeye çalıştığı durumu ifade eder.
- Structured Concurrency: Görevlerin belirlenen yapıda organize edildiği eşzamanlılık modelidir.
- Unstructured Concurrency: Görevlerin belirleyici bir ana görev olmadan bağımsız olarak çalıştığı bir eşzamanlılık modelidir. 
- Main Task: Bir programın en temel iş birimidir.

### Async / Await

- async: İşlevin ya da özelliğin asenkron olduğunu belirtir. Akışı, bir asenkron işlevin bir değer döndürmesini beklerken askıya alır.
- await: Asenkron işlevin çalışması için akışı tutar. Fonksiyon asenkron olduğundan diğer görevler devam eder ve bu süreçten etkilenmezler.
- throws: İşlevin hata döndürebileceğini belirtir.
- try: Hata verebilecek işlevi çalıştırmaya çalışır.

```swift
func decodeImage(base64: String) async throws -> UIImage? {
    if let data = Data(base64Encoded: base64) {
        if let image = UIImage(data: data) {
            return image
        } else {
            return nil
        }
    } else {
        return nil
    }
}

let image = try await decodeImage(base64: "...")
```

### Calling Asynchronous Functions in Parallel

"await" ile asenkron bir fonksiyonu çağırmak, aynı anda yalnızca bir kod parçasının çalışmasına izin verir. Asenkron kod çalışırken, bir sonraki kod satırı çalışmadan önce bu kodun bitmesini bekler.

```swift
func decodeImage(base64: String) async throws -> UIImage? {
    if let data = Data(base64Encoded: base64) {
        if let image = UIImage(data: data) {
            return image
        } else {
            return nil
        }
    } else {
        return nil
    }
}
```

```swift
func images() async throws -> [UIImage?]{
    let front = try await self.decodeImage(base64: "")
    let back = try await self.decodeImage(base64: "")
    let right = try await self.decodeImage(base64: "")
    let left = try await self.decodeImage(base64: "")
            
    let images = [front, back, right, left]
    return images
}
```

Bu yaklaşımın önemli bir dezavantajı vardır. İndirme asenkron olmasına ve ilerledikçe başka işlerin yapılmasına izin vermesine rağmen, aynı anda yalnızca bir decodeImage(base:64) çağrısı çalışır. Her fotoğraf, bir sonraki indirilmeye başlamadan önce tamamen indirilir. Ancak bu işlemlerin beklemesine gerek yok. Her fotoğraf bağımsız olarak, hatta aynı anda indirilebilir.

Asenkron bir işlevi çağırmak ve etrafındaki kodla paralel çalışmasına izin vermek için, bir sabit tanımladığınızda let'in önüne async yazın ve ardından sabiti her kullandığınızda await yazın.

```swift
func images() async throws -> [UIImage?]{
    async let front = self.decodeImage(base64: "")
    async let back = self.decodeImage(base64: "")
    async let right = self.decodeImage(base64: "")
    async let left = self.decodeImage(base64: "")
        
    let images = try await [front,back,right, left]
    return images
}
```

Bu örnekte, decodeImage(base64:)'a yapılan üç çağrının tümü, öncekinin tamamlanmasını beklemeden başlar. Yeterli sistem kaynağı mevcutsa aynı anda çalışabilirler. Bu işlev çağrılarının hiçbiri await ile işaretlenmez çünkü kod, işlevin sonucunu beklemek için askıya alınmaz. Bunun yerine, fotoğrafların tanımlandığı satıra kadar devam eder. Bu noktada, programın bu asenkron çağrılardan elde edilen sonuçlara ihtiyacı vardır, bu nedenle, dört fotoğrafın da indirilmesi bitene kadar yürütmeyi duraklatmak için await yazarsınız.

## Task and TaskGroup

Bir Task, asenkron bir iş birimini ifade eder. async işlevlerini çağırmak veya eşzamanlı iş parçacıkları oluşturmak için bir kapsayıcıdır. Task, yeni bir iş parçacığı başlatır ve bu işin ne zaman ve nasıl yürütüleceğini yönetir.

Bir Task Group, birden fazla asenkron görevi paralel olarak çalıştırmanızı ve sonuçlarını toplamanızı sağlar. Task Group, özellikle birden fazla bağımsız işi aynı anda gerçekleştirmek istediğinizde faydalıdır.

Task, tek bir asenkron iş çalıştırır. Bağımsız birer görevdir. Sonuçlar manuel olarak toplanır ve dinamik görev ekleme desteği sunmaz.

Task Group ise, birden fazla işin paralel olarak çalıştırılmasını sağlar. Grup içindeki görevleri koordine eder. Sonuçlar otomatik olarak toplanabilir ve "addTask" ile dinamik görev eklenebilir.

```swift
func randoms(_ start: Int, _ end: Int, _ size: Int) async throws -> [Int] {
    var array: [Int] = []
    for _ in 0..<size {
        array.append(Int.random(in: start...end))
    }
    return array
}

let handle = Task {
    return try await randoms(1,7,5)
}

let result = try await handle.value

print(result)
```

```
[1, 3, 6, 3, 5]
```

```swift
```

```swift
```

## Actors

- Class, enum ve struct yapıları gibi concrete tiptedir.
- Referans tipindedirler.
- Inheritance desteklemezler.
- Fonksiyon ve değişkenler barındırabilir, generic yapıları kullanabilir ve çeşitli protokolleri conform edebilirler.
