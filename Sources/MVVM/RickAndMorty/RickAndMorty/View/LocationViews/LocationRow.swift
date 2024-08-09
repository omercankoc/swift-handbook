import SwiftUI

struct LocationRow: View {
    var location: LocationModel
    
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading){
                Text(location.name ?? "Location Name Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.black)
                    .frame(height: 20, alignment: .leading)
                Text(location.type ?? "Location Type Not Found!")
                    .fixedSize(horizontal: false, vertical: false)
                    .foregroundStyle(Color.gray)
                    .frame(height: 20, alignment: .leading)
            }
            
            Spacer()
            
            Text(location.dimension ?? "Location Dimension Not Found!")
                .fixedSize(horizontal: false, vertical: false)
                .foregroundStyle(Color.black)
                .frame(height: 20, alignment: .leading)
        }
        .padding(.leading,5)
        .padding(.trailing,5)
    }
}

#Preview {
    LocationRow(
        location: LocationModel(
            id: 1,
            name: "Earth",
            type: "Planet",
            dimension: "Dimension C-137",
            url: "https://rickandmortyapi.com/api/location/1",
            created: "2017-11-10T12:42:04.162Z",
            residents: [
                "https://rickandmortyapi.com/api/character/1",
                "https://rickandmortyapi.com/api/character/2"
            ]
        )
    )
}
