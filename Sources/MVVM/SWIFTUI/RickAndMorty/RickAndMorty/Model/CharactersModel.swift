import Foundation

struct CharactersModel: Decodable, Hashable {
    let info: InfoModel?
    let results: [ResultModel]?
}

struct InfoModel: Decodable, Hashable {
    let count, pages: Int?
    let next, prev: String?
}

struct ResultModel: Decodable, Hashable {
    let id: Int?
    let name, status, species, type, gender, image, url, created: String?
    let origin, location: LocationModel
    let episode: [String]?
}

struct LocationModel: Decodable, Hashable {
    let name, url: String?
}

extension CharactersModel {
    init(info: InfoModel, results: [ResultModel]) {
        self.info = info
        self.results = results
    }
    
    enum CodingKeys: String, CodingKey {
        case info = "info", results = "results"
    }
}

extension InfoModel {
    init(count: Int, pages: Int, next: String, prev: String) {
        self.count = count
        self.pages = pages
        self.next = next
        self.prev = prev
    }
    
    enum CodingKeys: String, CodingKey {
        case count = "count", pages = "pages", next = "next", prev = "prev"
    }
}

extension ResultModel {
    init(id: Int, name: String, status: String, species: String, type: String, gender: String, origin: LocationModel, location: LocationModel, image: String, episode: [String], url: String, created: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.origin = origin
        self.location = location
        self.image = image
        self.episode = episode
        self.url = url
        self.created = created
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id", name = "name", status = "status", species = "species", type = "type", gender = "gender", origin = "origin", location = "location", image = "image", episode = "episode", url = "url", created = "created"
    }
}

extension LocationModel {
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "name", url = "url"
    }
}


