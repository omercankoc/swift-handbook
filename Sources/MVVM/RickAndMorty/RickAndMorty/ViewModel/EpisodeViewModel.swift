import Foundation

class EpisodeViewModel: ObservableObject {
    private let rest = RestAPIService()
    private var cash: [EpisodeModel] = []
    
    var model: EpisodesModel? = nil
    
    @Published var episodes: [EpisodeModel] = []
    
    func get(_ endpoint: String) async {
        do {
            let model = try await rest.get(endpoint, type: EpisodesModel.self)
            
            DispatchQueue.main.sync {
                self.model = model
                
                if let episodes = model.episodes {
                    self.episodes += episodes
                } else {
                    self.episodes = []
                }
                
                self.cash += self.episodes
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
