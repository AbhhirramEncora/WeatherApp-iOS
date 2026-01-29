//
//  WeatherResponse.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/27/26.
//

import Foundation

struct WeatherResponse: Codable {
    let current: Current
}

struct Current: Codable {
    let temperature2M: Double
    let isDay: Int
    let rain: Double
    let snowfall: Double
    let windSpeed10M: Double
    let windDirection10M: Double
    
    enum CodingKeys: String, CodingKey {
        case temperature2M = "temperature_2m"
        case isDay = "is_day"
        case rain
        case snowfall
        case windSpeed10M = "wind_speed_10m"
        case windDirection10M = "wind_direction_10m"
    }
}
