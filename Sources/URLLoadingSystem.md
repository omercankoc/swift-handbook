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

### httpBody in Object
```swift
let parameters : [String: Any?] = [
    "contact": [
        "phone": passenger.contact.phone ?? nil,
        "email": passenger.contact.email ?? nil,
    ] as [String: Any?],
    "name": passenger.name ?? nil,
    "surname": passenger.surname ?? nil,
    "id": passenger.id ?? nil
    ] as [String: Any?]
]  
```
```swift
let body = try JSONSerialization.data(withJSONObject: parameters, options: [.prettyPrinted, .withoutEscapingSlashes])
request.httpBody = body 
```

### httpBody in Collection
```swift
private func parameters(passenger: Passenger) -> [String: Any]{

    var object: Dictionary<String, Any> = [:]
    var images: Array<Any> = []

    for item in passenger.images {
        let image = [
            "image": item.image.jpegData(compressionQuality: 0.25)?.base64EncodedString(),
            "date": item.date,
            "location": item.location
        ] as [String: Any]

        images.append(image)
    }

    object = ["images", images]
    return object
}
```
```swift
let parameters = self.parameters(passenger: passenger)

let body = try JSONSerialization.data(withJSONObject: parameters, options: [.prettyPrinted, .withoutEscapingSlashes])
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
guard let httpURLResponse = response as? HTTPURLResponse, 200...300 ~= httpURLResponse.statusCode else {
    throw RestAPIError.invalidResponse
}
```
