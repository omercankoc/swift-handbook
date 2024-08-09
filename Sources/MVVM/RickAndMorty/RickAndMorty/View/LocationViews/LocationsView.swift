import SwiftUI

struct LocationsView: View {
    @ObservedObject var viewModel: LocationViewModel = LocationViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                List {
                    ForEach(self.viewModel.locations, id:\.id){ location in
                        LocationRow(location: location)
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
                .navigationTitle("Locations")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    if viewModel.locations.isEmpty {
                        Task {
                            await viewModel.get(Endpoints.LOCATION_URL)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LocationsView()
}
