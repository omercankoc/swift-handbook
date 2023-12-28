# Concurrency
Perform asynchronous operations.

Swift has built-in support for writing asynchronous and parallel code in a structured way. Asynchronous code can be suspended and resumed later, although only one piece of the program executes at a time. Suspending and resuming code in your program lets it continue to make progress on short-term operations like updating its UI while continuing to work on long-running operations like fetching data over the network or parsing files. Parallel code means multiple pieces of code run simultaneously — for example, a computer with a four-core processor can run four pieces of code at the same time, with each core carrying out one of the tasks. A program that uses parallel and asynchronous code carries out multiple operations at a time, and it suspends operations that are waiting for an external system.

The additional scheduling flexibility from parallel or asynchronous code also comes with a cost of increased complexity. Swift lets you express your intent in a way that enables some compile-time checking — for example, you can use actors to safely access mutable state. However, adding concurrency to slow or buggy code isn’t a guarantee that it will become fast or correct. In fact, adding concurrency might even make your code harder to debug. However, using Swift’s language-level support for concurrency in code that needs to be concurrent means Swift can help you catch problems at compile time.

### Async / Await

- async: Indicates that the function can be suspended. If there is a need to wait in other places that call the function, those parts should also be defined as async.
- throws: Indicates that the function may return an error.
- try: It tries to run the function that may throw an error.
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

Calling an asynchronous function with await runs only one piece of code at a time. While the asynchronous code is running, the caller waits for that code to finish before moving on to run the next line of code.
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
This approach has an important drawback: Although the download is asynchronous and lets other work happen while it progresses, only one call to downloadImage(base:64) runs at a time. Each photo downloads completely before the next one starts downloading. However, there’s no need for these operations to wait — each photo can download independently, or even at the same time.

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
In this example, all three calls to downloadImage(base64:) start without waiting for the previous one to complete. If there are enough system resources available, they can run at the same time. None of these function calls are marked with await because the code doesn’t suspend to wait for the function’s result. Instead, execution continues until the line where photos is defined — at that point, the program needs the results from these asynchronous calls, so you write await to pause execution until all three photos finish downloading.

Here’s how you can think about the differences between these two approaches:
- Call asynchronous functions with await when the code on the following lines depends on that function’s result. This creates work that is carried out sequentially.
- Call asynchronous functions with async-let when you don’t need the result until later in your code. This creates work that can be carried out in parallel.
- Both await and async-let allow other code to run while they’re suspended.
- In both cases, you mark the possible suspension point with await to indicate that execution will pause, if needed, until an asynchronous function has returned.
- You can also mix both of these approaches in the same code.

## Task and TaskGroup
A task is a unit of work that can be run asynchronously as part of your program. All asynchronous code runs as part of some task. A task itself does only one thing at a time, but when you create multiple tasks, Swift can schedule them to run simultaneously.

The async-let syntax described in the previous section implicitly creates a child task — this syntax works well when you already know what tasks your program needs to run. You can also create a task group (an instance of TaskGroup) and explicitly add child tasks to that group, which gives you more control over priority and cancellation, and lets you create a dynamic number of tasks.

Tasks are arranged in a hierarchy. Each task in a given task group has the same parent task, and each task can have child tasks. Because of the explicit relationship between tasks and task groups, this approach is called structured concurrency. The explicit parent-child relationships between tasks has several advantages:

- In a parent task, you can’t forget to wait for its child tasks to complete.
- When setting a higher priority on a child task, the parent task’s priority is automatically escalated.
- When a parent task is canceled, each of its child tasks is also automatically canceled.
- Task-local values propagate to child tasks efficiently and automatically.

```swift
```

```swift
```

```swift
```

```swift
```
