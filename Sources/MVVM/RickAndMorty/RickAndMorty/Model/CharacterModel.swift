import Foundation

struct CharactersModel: Decodable, Hashable {
    let info: InfoModel?
    let characters: [CharacterModel]?
}

extension CharactersModel {
    init(info: InfoModel, characters: [CharacterModel]) {
        self.info = info
        self.characters = characters
    }
    
    enum CodingKeys: String, CodingKey {
        case info = "info", characters = "results"
    }
}

struct CharacterModel: Decodable, Hashable {
    let id: Int?
    let name, status, species, type, gender, image, url, created: String?
    let origin, location: PlanetModel
    let episode: [String]?
}

extension CharacterModel {
    init(id: Int, name: String, status: String, species: String, type: String, gender: String, origin: PlanetModel, location: PlanetModel, image: String, episode: [String], url: String, created: String) {
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

struct PlanetModel: Decodable, Hashable {
    let name, url: String?
}

extension PlanetModel {
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "name", url = "url"
    }
}

struct InfoModel: Decodable, Hashable {
    let count, pages: Int?
    let next, prev: String?
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
