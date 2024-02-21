func postImage(endpoint: String, image: ImageModel) async throws {
    guard let url = URL(string: endpoint) else { throw RestAPIError.invalidURL }

    var request = URLRequest(url: url, timeoutInterval: 10)
    request.addValue(clientCode, forHTTPHeaderField: "ClientCode")
    request.addValue(contentType, forHTTPHeaderField: "Content-Type")
    request.addValue(token, forHTTPHeaderField: "Authorization")
    request.httpMethod = "POST"

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

    var encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    encoder.outputFormatting = .withoutEscapingSlashes
    let body = try encoder.encode(image)
    request.httpBody = body

    let session = URLSession.shared
    let (data,response) = try await session.data(for: request)

    guard let httpURLResponse = response as? HTTPURLResponse, 200...300 ~= httpURLResponse.statusCode else { throw RestAPIError.invalidResponse }
    var decoder = JSONDecoder()
    let result = try decoder.decode(ResultModel.self, from: data)
}
