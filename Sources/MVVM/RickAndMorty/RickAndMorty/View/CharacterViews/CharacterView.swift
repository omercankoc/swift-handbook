import SwiftUI

struct CharacterView: View {
    var character: CharacterModel
    
    var body: some View {
        VStack(spacing: 10){
            Text(character.name?.uppercased() ?? "Character Name Not Found")
                .bold(true)
                .font(.title)
            
            Text(character.status?.uppercased() ?? "Character Status Not Found")
                .bold(true)
                .font(.title3)
            
            AsyncImage(url: URL(string: character.image ?? "")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 300, height: 300)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                case .failure:
                    Image(systemName: "")
                        .frame(width: 60, height: 60)
                @unknown default:
                    Image(systemName: "")
                        .frame(width: 60, height: 60)
                }
            }
            
            Text(character.gender ?? "Character Gender Not Found")
            Text(character.species ?? "Character Species Not Found")
            Text(character.origin.name ?? "Character Origin Not Found")
            Text(character.location.name ?? "Character Location Not Found")
        }
    }
}

#Preview {
    CharacterView(
        character: CharacterModel(
            id: 1,
            name: "Rick Sanchez",
            status: "Alive",
            species: "Human",
            type: "",
            gender: "Male",
            origin: PlanetModel(name: "Earth", url: "https://rickandmortyapi.com/api/location/1"),
            location: PlanetModel(name: "Earth", url: "https://rickandmortyapi.com/api/location/20"),
            image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
            episode: ["https://rickandmortyapi.com/api/episode/1", "https://rickandmortyapi.com/api/episode/2"],
            url: "https://rickandmortyapi.com/api/character/1",
            created: "2017-11-04T18:48:46.250Z"
        )
    )
}
