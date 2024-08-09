import SwiftUI

struct CharacterRow: View {
    var character: CharacterModel
    
    var body: some View {
        HStack(spacing: 10) {
            AsyncImage(url: URL(string: character.image ?? "")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 60, height: 60)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                case .failure:
                    Image(systemName: "")
                        .frame(width: 60, height: 60)
                @unknown default:
                    Image(systemName: "")
                        .frame(width: 60, height: 60)
                }
            }
            
            VStack(alignment: .leading){
                Text(character.name ?? "Character Name Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.black)
                    .frame(height: 20, alignment: .leading)
                Text(character.species ?? "Character Species Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.gray)
                    .frame(height: 20, alignment: .leading)
                Text(character.gender ?? "Character Gender Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.black)
                    .frame(height: 20, alignment: .leading)
            }
            
            Spacer()
            
            if character.status?.uppercased() == "DEAD" {
                Text(character.status ?? "Unknown")
                    .foregroundStyle(Color.red)
            } else if character.status?.uppercased() == "ALIVE" {
                Text(character.status ?? "Unknown")
                    .foregroundStyle(Color.green)
            } else {
                Text(character.status?.capitalized ?? "Unknown")
                    .foregroundStyle(Color.blue)
            }
        }
        .padding(.leading,5)
        .padding(.trailing,5)
    }
}

#Preview {
    CharacterRow(
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
