//
//  GeocodingService.swift
//  WeatherAppTest
//
//  Created by rentamac on 1/30/26.
//

//import Foundation
//
//protocol GeocodingServiceProtocol {
//    func searchCity(name: String) async throws -> [GeocodingCity]
//}
//
//final class GeocodingService: GeocodingServiceProtocol {
//
//    func searchCity(name: String) async throws -> [GeocodingCity] {
//        var components = URLComponents(string: "https://geocoding-api.open-meteo.com/v1/search")!
//        components.queryItems = [
//            URLQueryItem(name: "name", value: name),
//            URLQueryItem(name: "count", value: "10")
//        ]
//
//        let url = components.url!
//        let (data, _) = try await URLSession.shared.data(from: url)
//
//        let response = try JSONDecoder().decode(GeocodingResponse.self, from: data)
//        return response.results ?? []
//    }
//}


import Foundation

final class GeocodingService {

    func searchCity(name: String) async throws -> [GeocodingCity] {
        let encoded = name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let url = URL(string:
            "https://geocoding-api.open-meteo.com/v1/search?name=\(encoded)&count=10&language=en&format=json"
        )!

        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(GeocodingResponse.self, from: data)
        return response.results ?? []
    }
}
