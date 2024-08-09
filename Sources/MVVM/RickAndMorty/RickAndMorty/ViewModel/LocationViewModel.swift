import Foundation

class LocationViewModel: ObservableObject {
    private let rest = RestAPIService()
    private var cash: [LocationModel] = []
    
    var model: LocationsModel? = nil
    
    @Published var locations: [LocationModel] = []
    
    func get(_ endpoint: String) async {
        do {
            let model = try await rest.get(endpoint, type: LocationsModel.self)
            
            DispatchQueue.main.sync {
                self.model = model
                
                if let locations = model.locations {
                    self.locations += locations
                } else {
                    self.locations = []
                }
                
                self.cash += self.locations
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
