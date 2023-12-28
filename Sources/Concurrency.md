# Concurrency
Perform asynchronous operations.

Swift has built-in support for writing asynchronous and parallel code in a structured way. Asynchronous code can be suspended and resumed later, although only one piece of the program executes at a time. Suspending and resuming code in your program lets it continue to make progress on short-term operations like updating its UI while continuing to work on long-running operations like fetching data over the network or parsing files. Parallel code means multiple pieces of code run simultaneously — for example, a computer with a four-core processor can run four pieces of code at the same time, with each core carrying out one of the tasks. A program that uses parallel and asynchronous code carries out multiple operations at a time, and it suspends operations that are waiting for an external system.

The additional scheduling flexibility from parallel or asynchronous code also comes with a cost of increased complexity. Swift lets you express your intent in a way that enables some compile-time checking — for example, you can use actors to safely access mutable state. However, adding concurrency to slow or buggy code isn’t a guarantee that it will become fast or correct. In fact, adding concurrency might even make your code harder to debug. However, using Swift’s language-level support for concurrency in code that needs to be concurrent means Swift can help you catch problems at compile time.

### Async / Await

- async: Indicates that the function can be suspended. If there is a need to wait in other places that call the function, those parts should also be defined as async.
- throws:
- try: 
- await: It holds the stream for the asynchronous function to run. Meanwhile, since the function is async, other tasks continue and are not affected by this process

```swift
func username(name: String, surname: String) async throws -> String {
    return "\(name.lowercased()).\(surname.lowercased())"
}

let user = try await username(name: "Chris", surname: "Lattner")
print(user)
```
```
chris.lattner
```

### Calling Asynchronous Functions in Parallel

```swift
func downloadImage(base64: String) async throws -> UIImage {
    let data = Data(base64Encoded: base64)
    let image = UIImage(data: data!)
    return image!
}
```

```swift
func images() async throws -> [UIImage]{
    let first = try await self.downloadImage(base64: "")
    let second = try await self.downloadImage(base64: "")
    let third = try await self.downloadImage(base64: "")
        
    let images = [first,second,third]
    return images
}
```

Calling an asynchronous function with await runs only one piece of code at a time. While the asynchronous code is running, the caller waits for that code to finish before moving on to run the next line of code. For example, to fetch the first three photos from a gallery, you could await three calls to the downloadPhoto(named:) function as follows:

This approach has an important drawback: Although the download is asynchronous and lets other work happen while it progresses, only one call to downloadPhoto(named:) runs at a time. Each photo downloads completely before the next one starts downloading. However, there’s no need for these operations to wait — each photo can download independently, or even at the same time.

To call an asynchronous function and let it run in parallel with code around it, write async in front of let when you define a constant, and then write await each time you use the constant.

```swift
func images() async throws -> [UIImage]{
    async let first = self.downloadImage(base64: "")
    async let second = self.downloadImage(base64: "")
    async let third = self.downloadImage(base64: "")
        
    let images = try await [first,second,third]
    return images
}
```
