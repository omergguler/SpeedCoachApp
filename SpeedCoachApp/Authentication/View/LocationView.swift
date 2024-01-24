import SwiftUI
import MapKit

struct LocationView: View {
    let lat: Double
    let lon: Double
    @StateObject private var viewModel = LocationViewModel()
    @State private var region: MKCoordinateRegion
    
    init(lat: Double, lon: Double) {
            self.lat = lat
            self.lon = lon
            _region = State(initialValue: MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: lat, longitude: lon),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            ))
        }
    
    var body: some View {
        Map(coordinateRegion: $region).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }



}

// Preview
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(lat: 0.0, lon: 0.0)
    }
}
