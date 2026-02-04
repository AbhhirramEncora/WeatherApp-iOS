//
//  GeoCodingModel.swift
//  WeatherAppTest
//
//  Created by rentamac on 1/30/26.
//

import Foundation

struct GeocodingResponse: Codable {
    let results: [GeocodingCity]?
}

struct GeocodingCity: Codable, Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    let country: String?
}

