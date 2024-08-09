import SwiftUI

struct CharactersView: View {
    @ObservedObject var viewModel : CharacterViewModel = CharacterViewModel()
    @State private var key: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                List {
                    ForEach(self.viewModel.characters, id:\.id){ character in
                        NavigationLink {
                            CharacterView(character: character)
                        } label: {
                            CharacterRow(character: character)
                        }
                    }
                    .listRowSeparator(.hidden)
                    
                    if self.key == "" {
                        Button {
                            Task {
                                await viewModel.get(viewModel.model?.info?.next ?? "")
                            }
                        } label: {
                            Text("More")
                                .foregroundStyle(Color.blue)
                                .frame(width: geometry.size.width, height: 50, alignment: .center)
                        }
                    }
                }
                .frame(alignment: .center)
                .listStyle(.inset)
                .navigationTitle("Characters")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $key)
                .onAppear {
                    if viewModel.characters.isEmpty {
                        Task {
                            await viewModel.get(Endpoints.CHARACTER_URL)
                            print("Characters on task")
                        }
                    }
                }
                .onChange(of: self.key){
                    viewModel.search(key)
                }
            }
        }
    }
}

#Preview {
    CharactersView()
}
