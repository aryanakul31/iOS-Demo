//
//  MapView.swift
//  Demo
//
//  Created by Nakul Arya on 27/06/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    
    var coordinate : CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 5,
                longitudeDelta: 5
            )
        )
    }
    
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))

}
