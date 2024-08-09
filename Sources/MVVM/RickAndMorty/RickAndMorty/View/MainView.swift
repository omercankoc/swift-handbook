import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            TabView {
                VStack {
                    CharactersView()
                }
                .tabItem {
                    Image(systemName: "person")
                    Text("Characters")
                }
                .tag(0)
                
                VStack {
                    EpisodesView()
                }
                .tabItem {
                    Image(systemName: "film")
                    Text("Episodes")
                }
                .tag(1)
                        
                VStack {
                    LocationsView()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
                .tag(2)
            }
            .navigationTitle("Rick And Morty")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MainView()
}
