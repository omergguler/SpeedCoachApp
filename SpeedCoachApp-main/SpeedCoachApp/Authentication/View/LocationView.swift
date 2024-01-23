import SwiftUI
import MapKit

struct LocationView: View {
    @StateObject private var viewModel = LocationViewModel()
    @State private var hasPermission = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.052235, longitude: -118.243683), // Default location
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        NavigationView {
            VStack {
                //Button("Back to Training") {
                  //  viewModel.startGettingLocation()
                   // updateRegion()
                //}

                if !hasPermission {
                    Button("Give Permission") {
                        viewModel.askForPermission()
                        hasPermission = true // Assuming permission is granted
                    }
                }

                Map(coordinateRegion: $region)
                locationView

                NavigationLink(destination: TrainingView()) {
                    Text("Back to Training")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }

    private var locationView: some View {
        VStack(spacing: .zero) {
            if let location = viewModel.location {
                HStack(spacing: .zero) {
                    Text("Latitude:")
                    Text("\(location.coordinate.latitude)")
                }
                HStack(spacing: .zero) {
                    Text("Longitude:")
                    Text("\(location.coordinate.longitude)")
                }
            }
        }
    }

    private func updateRegion() {
        if let location = viewModel.location {
            region.center = location.coordinate
        }
    }
}

// Assume a simple TrainingView for demonstration
struct TrainingView: View {
    var body: some View {
        Text("This is the Training View")
    }
}

// Preview
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
