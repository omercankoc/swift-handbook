import Foundation

class CharactersViewModel: ObservableObject {
    
    let restAPI = RestAPIService()
    var charactersModel : CharactersModel? = nil
    
    @Published var characters: [ResultModel] = []
    
    func getCharacters(_ endpoint: String) async {
        do {
            let charactersModel = try await restAPI.get(endpoint, type: CharactersModel.self )
            DispatchQueue.main.sync {
                self.charactersModel = charactersModel
                if let results = charactersModel.results { self.characters += results }
                else { self.characters = [] }
            }
        } catch {
            print(error)
        }
    }
    
    func searchCharacters(_ key: String) {
        if key == "" { self.characters = charactersModel?.results ?? [] }
        else { self.characters = self.characters.filter({ $0.name!.uppercased().contains(key.uppercased()) || $0.species!.uppercased().hasPrefix(key.uppercased()) })}
    }
}
