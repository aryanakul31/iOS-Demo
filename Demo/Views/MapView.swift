//
//  MapView.swift
//  Demo
//
//  Created by Nakul Arya on 27/06/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166),
            span: MKCoordinateSpan(
                latitudeDelta: 5,
                longitudeDelta: 5
            )
        )
    }
}

#Preview {
    MapView()
}
