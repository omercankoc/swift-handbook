# Concurrency

## Async / Await

- async : Indicates that the function can be suspended. If there is a need to wait in other places that call the function, those parts should also be defined as async.
- await : It holds the stream for the asynchronous function to run. Meanwhile, since the function is async, other tasks continue and are not affected by this process

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
