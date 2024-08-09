import Foundation

class CharacterViewModel: ObservableObject {
    
    let rest = RestAPIService()
    var model: CharactersModel? = nil
    var cash: [CharacterModel] = []
    
    @Published var characters: [CharacterModel] = []
    
    func get(_ endpoint: String) async {
        do {
            let model = try await rest.get(endpoint, type: CharactersModel.self )
            
            DispatchQueue.main.sync {
                self.model = model
                
                if let characters = model.characters {
                    self.characters += characters
                } else {
                    self.characters = []
                }
                
                self.cash += characters
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func search(_ key: String) {
        if key == "" {
            self.characters = cash
        } else {
            self.characters = self.characters.filter(
                {
                    $0.name!.uppercased().contains(key.uppercased()) || $0.species!.uppercased().hasPrefix(key.uppercased())
                }
            )
        }
    }
}
