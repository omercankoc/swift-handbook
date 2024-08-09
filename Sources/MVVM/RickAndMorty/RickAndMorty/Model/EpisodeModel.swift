import Foundation

struct EpisodesModel: Decodable, Hashable {
    let info: InfoModel?
    let episodes: [EpisodeModel]?
}

extension EpisodesModel {
    init(info: InfoModel, episodes: [EpisodeModel]){
        self.info = info
        self.episodes = episodes
    }
    
    enum CodingKeys: String, CodingKey {
        case info = "info", episodes = "results"
    }
}

struct EpisodeModel: Decodable, Hashable {
    let id: Int?
    let name, airDate, episode, url, created: String?
    let characters: [String]?
}

extension EpisodeModel {
    init(id: Int, name: String, airDate: String, episode: String, url: String, created: String, characters: [String]){
        self.id = id
        self.name = name
        self.airDate = airDate
        self.episode = episode
        self.url = url
        self.created = created
        self.characters = characters
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id", name = "name", airDate = "airDate", episode = "episode", url = "url", created = "created", characters = "characters"
    }
}
