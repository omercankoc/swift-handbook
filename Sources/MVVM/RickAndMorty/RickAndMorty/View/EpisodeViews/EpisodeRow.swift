import SwiftUI

struct EpisodeRow: View {
    var episode: EpisodeModel
    
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading){
                Text(episode.name ?? "Episode Name Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.black)
                    .frame(height: 20, alignment: .leading)
                Text(episode.airDate ?? "Episode Airdate Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.gray)
                    .frame(height: 20, alignment: .leading)
            }
            
            Spacer()
            
            Text(episode.episode ?? "Episode Information Not Found!")
                .fixedSize(horizontal: false, vertical: false)
                .foregroundStyle(Color.black)
                .frame(height: 20, alignment: .leading)
        }
        .padding(.leading,5)
        .padding(.trailing,5)
    }
}

#Preview {
    EpisodeRow(
        episode: EpisodeModel(
            id: 28,
            name: "The Ricklantis Mixup",
            airDate: "September 10, 2017",
            episode: "S03E07",
            url: "https://rickandmortyapi.com/api/episode/28",
            created: "2017-11-10T12:56:36.618Z",
            characters: [
                "https://rickandmortyapi.com/api/character/1",
                "https://rickandmortyapi.com/api/character/2"
            ]
        )
    )
}
