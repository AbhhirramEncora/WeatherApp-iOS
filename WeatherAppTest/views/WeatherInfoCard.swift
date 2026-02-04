//
//  WeatherInfoCard.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/27/26.
//

import SwiftUI

struct WeatherInfoCard: View {
    let title: String
    let value: String
    let icon: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title)

            Text(title)
                .font(.caption)

            Text(value)
                .bold()
        }
        .frame(width: 120, height: 120)
        .background(.ultraThinMaterial)
        .cornerRadius(16)
    }
}
