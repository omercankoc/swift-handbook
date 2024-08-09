import SwiftUI

struct EpisodesView: View {
    @ObservedObject var viewModel: EpisodeViewModel = EpisodeViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                List {
                    ForEach(self.viewModel.episodes, id:\.id){ episode in
                        EpisodeRow(episode: episode)
                    }
                    .listRowSeparator(.hidden)

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
                .listRowSeparator(.hidden)
                .frame(alignment: .center)
                .listStyle(.inset)
                .navigationTitle("Episodes")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    if viewModel.episodes.isEmpty {
                        Task {
                            await viewModel.get(Endpoints.EPISODE_URL)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    EpisodesView()
}
