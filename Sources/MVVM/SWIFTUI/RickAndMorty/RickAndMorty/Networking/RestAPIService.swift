import Foundation

struct Endpoints {
    static let CHARACTER_URL: String = "https://rickandmortyapi.com/api/character/?page=1"
}

enum RestAPIError: Error {
    case urlError, clientError, serverError, decodeError, undefinedError
}

protocol RestAPIProtocol {
    func get<T: Decodable>(_ endpoint: String, type: T.Type) async throws -> T
}

class RestAPIService: RestAPIProtocol {
    func get<T: Decodable>(_ endpoint: String, type: T.Type ) async throws -> T {
        guard let url = URL(string: endpoint) else { throw RestAPIError.urlError }
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let (data, response) = try await session.data(for: request)
        
        if let status = response as? HTTPURLResponse {
            switch status.statusCode {
            case 100..<200: break
            case 200..<300: break
            case 300..<400: break
            case 400..<500: throw RestAPIError.clientError
            case 500..<600: throw RestAPIError.serverError
            default: throw RestAPIError.undefinedError
            }
        }

        let decoder = JSONDecoder()
        guard let model = try? decoder.decode(T.self, from: data) else { throw RestAPIError.decodeError }
        return model
    }
}
