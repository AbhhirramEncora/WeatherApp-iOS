//
//  WeatherEndpoint.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/27/26.
//

import Foundation

struct WeatherRequest {
    let latitude: Double
    let longitude: Double
}

struct WeatherEndpoint: APIEndpoint {
    
    let request: WeatherRequest
    
    var baseURL: String { "https://api.open-meteo.com" }

//    var baseURL: String { "https://api.open-mete.com" }

    
    
    var path: String { "/v1/forecast" }
    
    var queryItems: [URLQueryItem] {
        [
            URLQueryItem(name: "latitude", value: "\(request.latitude)"),
            URLQueryItem(name: "longitude", value: "\(request.longitude)"),
            URLQueryItem(name: "current", value: "temperature_2m,is_day,rain,snowfall,wind_speed_10m,wind_direction_10m")
        ]
    }
}
