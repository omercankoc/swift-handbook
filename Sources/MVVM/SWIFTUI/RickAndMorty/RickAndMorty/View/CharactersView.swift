import SwiftUI

struct CharactersView: View {
    @ObservedObject var charactersViewModel : CharactersViewModel = CharactersViewModel()
    @State var searchable: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                List {
                    ForEach(self.charactersViewModel.characters, id:\.id){ character in
                        NavigationLink {
                            CharacterView(character: character)
                        } label: {
                            CharacterRow(character: character)
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Button {
                        Task { await charactersViewModel.getCharacters(charactersViewModel.charactersModel?.info?.next ?? "") }
                    } label: {
                        Text("More").foregroundStyle(Color.blue).frame(width: geometry.size.width, height: 50, alignment: .center)
                    }
                    .listRowSeparator(.hidden)
                }
                .refreshable { Task { await charactersViewModel.getCharacters(Endpoints.CHARACTER_URL) }}
                .frame(alignment: .center)
                .listStyle(.inset)
                .navigationTitle("Characters")
                .navigationBarTitleDisplayMode(.inline)
                .task { await charactersViewModel.getCharacters(Endpoints.CHARACTER_URL) }
                .searchable(text: $searchable)
                .onChange(of: self.searchable){ charactersViewModel.searchCharacters(searchable) }
            }
        }
    }
}

#Preview { CharactersView() }
