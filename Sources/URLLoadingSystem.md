# URL Loading System
Interact with URLs and communicate with servers using standard Internet protocols.

- URLRequest
- URLSession
- URLSessionTask
- URLResponse
- HTTPURLResponse
- Requests
  - GET
  - POST
  - PUT
  - DELETE

## URLRequest
A URL load request that is independent of protocol or URL scheme.
```swift
guard let url = URL(string: URL) else { throw RestAPIError.invalidURL }

var request = URLRequest(url: url, timeoutInterval: 10)
request.addValue(clientCode, forHTTPHeaderField: "ClientCode")
request.addValue(contentType, forHTTPHeaderField: "Content-Type")
request.addValue(token, forHTTPHeaderField: "Authorization")
request.httpMethod = "POST"
```

- Object Body
```swift
let image : [String: Any?] = [
    "metadata": [
        "dimension": image.metadata.dimension ?? nil,
        "width": image.metadata.width ?? nil,
        "height": image.metadata.height ?? nil,
        "horizontalResolution": image.metadata.horizontalResolution ?? nil,
        "verticalResolution": image.metadata.verticalResolution ?? nil,
        "bitDepth": image.metadata.bitDepth ?? nil,
        "representation": image.metadata.representation ?? nil
    ] as [String: Any?],
    "date": image.date ?? nil,
    "location": image.location ?? nil,
    "id": image.id ?? nil,
    "image": image.image.jpegData(compressionQuality: 0.25)?.base64EncodedString() ?? nil
] as [String: Any?] 
```
- JSON Serialization
```swift
let body = try JSONSerialization.data(withJSONObject: image, options: [.prettyPrinted, .withoutEscapingSlashes])
request.httpBody = body 
```
- JSON Encoder
```swift
var encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted
encoder.outputFormatting = .withoutEscapingSlashes
let body = try encoder.encode(image)
request.httpBody = body 
```

- Collection Body
```swift
private func body(images: [Image]) -> [String: Any]{

    var object: Dictionary<String, Any> = [:]
    var images: Array<Any> = []

    for image in images {
        let image : [String: Any?] = [
            "metadata": [
                "dimension": image.metadata.dimension ?? nil,
                "width": image.metadata.width ?? nil,
                "height": image.metadata.height ?? nil,
                "horizontalResolution": image.metadata.horizontalResolution ?? nil,
                "verticalResolution": image.metadata.verticalResolution ?? nil,
                "bitDepth": image.metadata.bitDepth ?? nil,
                "representation": image.metadata.representation ?? nil
            ] as [String: Any?],
            "date": image.date ?? nil,
            "location": image.location ?? nil,
            "id": image.id ?? nil,
            "image": image.image.jpegData(compressionQuality: 0.25)?.base64EncodedString() ?? nil
        ] as [String: Any?]
        images.append(image)
    }

    object = ["images", images]
    return object
}
```
- JSON Serialization
```swift
let objects = self.body(images: images)

let body = try JSONSerialization.data(withJSONObject: objects, options: [.prettyPrinted, .withoutEscapingSlashes])
request.httpBody = body
```
- JSON Encoder
```swift
let objects = self.body(images: images)

var encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted
encoder.outputFormatting = .withoutEscapingSlashes
let body = try encoder.encode(objects)
request.httpBody = body
```

## URLSession
An object that coordinates a group of related, network data transfer tasks.
```swift
let session = URLSession.shared
let (data,response) = try await session.data(for: request)
```

## URLSessionTask
A task, like downloading a specific resource, performed in a URL session.



## URLResponse
The metadata associated with the response to a URL load request, independent of protocol and URL scheme.

## HTTPURLResponse
The metadata associated with the response to an HTTP protocol URL load request.
```swift
guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 201 else {
    throw RestAPIError.invalidResponse
}
```
