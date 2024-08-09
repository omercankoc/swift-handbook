import Foundation

struct LocationsModel: Decodable, Hashable {
    let info: InfoModel?
    let locations: [LocationModel]?
}

extension LocationsModel {
    init(info: InfoModel, locations: [LocationModel]){
        self.info = info
        self.locations = locations
    }
    
    enum CodingKeys: String, CodingKey {
        case info = "info", locations = "results"
    }
}

struct LocationModel: Decodable, Hashable {
    let id: Int?
    let name, type, dimension, url, created: String?
    let residents: [String]?
}

extension LocationModel {
    init(id: Int, name: String, type: String, dimension: String, url: String, created: String, residents: [String]){
        self.id = id
        self.name = name
        self.type = type
        self.dimension = dimension
        self.url = url
        self.created = created
        self.residents = residents
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id", name = "name", type = "type", dimension = "dimension", url = "url", created = "created", residents = "residents"
    }
}
