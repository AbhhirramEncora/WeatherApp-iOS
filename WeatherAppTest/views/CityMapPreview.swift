//
//  CityMapPreview.swift
//  WeatherAppTest
//
//  Created by rentamac on 1/30/26.
//

import Foundation
import SwiftUI
import MapKit

struct CityMapPreview: View {

    let latitude: Double
    let longitude: Double

    @State private var region: MKCoordinateRegion

    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude

        _region = State(
            initialValue: MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        )
    }

    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .allowsHitTesting(false) // 👈 important
    }
}
