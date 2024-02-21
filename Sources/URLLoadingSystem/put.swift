func putPassenger(endpoint: String, passenger: PassengerModel, id: String) async throws {
    guard let url = URL(string: endpoint) else { throw RestAPIError.invalidURL }

    var request = URLRequest(url: url, timeoutInterval: 10)
    request.addValue(clientCode, forHTTPHeaderField: "ClientCode")
    request.addValue(contentType, forHTTPHeaderField: "Content-Type")
    request.addValue(token, forHTTPHeaderField: "Authorization")
    request.addValue(id, forHTTPHeaderField: "ID")
    request.httpMethod = "PUT"

    let passenger : [String: Any?] = [
        "contact": [
            "phone": passenger.contact.phone ?? nil,
            "email": passenger.contact.email ?? nil,
            "address": passenger.contact.address ?? nil,
        ] as [String: Any?],
        "name": passenger.name ?? nil,
        "surname": passenger.surname ?? nil,
        "id": passenger.id ?? nil,
    ] as [String: Any?] 

    var encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    encoder.outputFormatting = .withoutEscapingSlashes
    let body = try encoder.encode(passenger)
    request.httpBody = body

    let session = URLSession.shared
    let (data,response) = try await session.data(for: request)

    guard let httpURLResponse = response as? HTTPURLResponse, 200...300 ~= httpURLResponse.statusCode else { throw RestAPIError.invalidResponse }
    var decoder = JSONDecoder()
    let result = try decoder.decode(ResultModel.self, from: data)
}
