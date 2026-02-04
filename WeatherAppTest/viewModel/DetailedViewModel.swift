//
//  DetailedViewModel.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/27/26.
//

import Foundation
import Combine
import CoreData
//
//@MainActor
//final class DetailedViewModel: ObservableObject {
//
//    @Published var weather: WeatherResponse?
//    @Published var isLoading = false
//    @Published var errorMessage: String?
//
//    private let weatherService = WeatherService(
//        networkService: HttpNetworking()
//    )
//
//    func fetchWeather(latitude: Double, longitude: Double) async {
//        isLoading = true
//        errorMessage = nil
//
//        do {
//            weather = try await weatherService.fetchWeather(
//                latitude: latitude,
//                longitude: longitude
//            )
//        } catch {
//            errorMessage = "Failed to load weather"
//        }
//
//        isLoading = false
//    }
//}

import CoreData

//@MainActor
//final class DetailedViewModel: ObservableObject {
//
//    @Published var temperatureText = "Loading..."
//
//    private let service = WeatherService(networkService: HttpNetworking())
//    private let context = PersistenceController.shared.container.viewContext
//
//    func fetchWeather(city: CityEntity) async {
//        do {
//            let response = try await service.fetchWeather(
//                latitude: city.latitude,
//                longitude: city.longitude
//            )
//
//            let temp = response.current.temperature2M
//            city.temperature = temp
//            city.lastUpdated = Date()
//            try? context.save()
//
//            temperatureText = "\(Int(temp))°C"
//
//        } catch {
//            if city.temperature != CacheConstants.invalidTemperature {
//                temperatureText = "\(Int(city.temperature))°C (Cached)"
//            } else {
//                temperatureText = "Unable to fetch data"
//            }
//        }
//    }

//}

@MainActor
final class DetailedViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var city: CityEntity?
    
    private let context = PersistenceController.shared.container.viewContext
    private let service = WeatherService(networkService: HttpNetworking())
    
    func fetchWeather(city: CityEntity) async {
        self.city = city
        isLoading = true
        errorMessage = nil
        
        do {
            let response = try await service.fetchWeather(
                latitude: city.latitude,
                longitude: city.longitude
            )
            
            let current = response.current
            
            // Cache values
            city.temperature = current.temperature2M
            city.isDay = Int16(current.isDay)
            city.rain = current.rain
            city.snowfall = current.snowfall
            city.windSpeed = current.windSpeed10M
            city.windDirection = current.windDirection10M
            
            try context.save()
            isLoading = false
            
        } catch {
            isLoading = false
            
            // Offline fallback
            if city.temperature != CacheConstants.invalidDouble {
                self.city = city
            } else {
                errorMessage = "Unable to fetch weather data"
            }
        }
    }
}
