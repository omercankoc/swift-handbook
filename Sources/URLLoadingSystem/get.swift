func getImages(endpoint: String) async throws -> [ImageModel] {
    guard let url = URL(string: endpoint) else { throw RestAPIError.invalidURL }
        
    var request = URLRequest(url: url, timeoutInterval: 10)
    request.addValue(clientCode, forHTTPHeaderField: "ClientCode")
    request.addValue(contentType, forHTTPHeaderField: "Content-Type")
    request.addValue(token, forHTTPHeaderField: "Authorization")
    request.httpMethod = "GET"
        
    let session = URLSession.shared
    let (data, response) = try await session.data(for: request)
        
    guard let httpURLResponse = response as? HTTPURLResponse, 200...300 ~= httpURLResponse.statusCode else { throw RestAPIError.invalidResponse }
    return try JSONDecoder().decode([ImageModel].self, from: data)
}
