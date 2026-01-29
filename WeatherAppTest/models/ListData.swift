//
//  ListData.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/23/26.
//

import Foundation



struct Location: Identifiable {
    let id: UUID = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
}
