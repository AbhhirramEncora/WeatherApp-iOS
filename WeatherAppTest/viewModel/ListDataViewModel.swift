////
////  ListDataViewModel.swift
////  WeatherAppTest
////
////  Created by Abhhirram Veedhi on 1/23/26.
////
//
//import Foundation
//import Combine
//
//final class ListDataViewModel: ObservableObject {
//    @Published var locations: [Location] = []
//    
//    @Published var searchedLocation: String = ""
//    
//    init(){
//        loadDummyData()
//    }
//    
//    private func loadDummyData(){
////
//        locations = [
//                    Location(name: "Mumbai", latitude: 19.0760, longitude: 72.8777),
//                    Location(name: "New York", latitude: 40.730610, longitude: -73.935242),
//                    Location(name: "London", latitude: 51.50735, longitude: -0.12776),
//                    Location(name: "Sydney", latitude: -33.86882, longitude: 151.20930),
//                    Location(name: "Tokyo", latitude: 35.68945633, longitude: 139.69171609),
//                    Location(name: "Auckland", latitude: -36.84846, longitude: 174.76333),
//                    Location(name: "Melbourne", latitude: -37.81361, longitude: 144.96306),
//                    Location(name: "Brisbane", latitude: -27.46977, longitude: 153.02512),
//                    Location(name: "Perth", latitude: -31.95053, longitude: 115.86046),
//                    Location(name: "Adelaide", latitude: -34.92850, longitude: 138.60075),
//                    Location(name: "Moscow", latitude: 55.7569, longitude: 37.6151),
//                    Location(name: "Nunatame", latitude: 80.0000, longitude: 66.0000)
//                ]
//
//    }
//    
//    
////    filter for search func
//    
//    var filteredLocations: [Location] {
//            guard !searchedLocation.isEmpty else { return locations }
//
//            return locations.filter {
//                $0.name.lowercased().contains(searchedLocation.lowercased())
//            }
//        }
//    
//}

//
//import CoreData
//import Combine
//
//@MainActor
//final class ListDataViewModel: ObservableObject {
//
//    @Published var cities: [CityEntity] = []
//
//    private let context = PersistenceController.shared.container.viewContext
//
//    init() {
//        CityEntity.seed(context: context)
//        load()
//    }
//
//    func load() {
//        cities = CityEntity.fetchAll(context: context)
//    }
//
//    func clearTemperatureCache() {
//        cities.forEach {
//            $0.temperature = CacheConstants.invalidDouble
//            $0.lastUpdated = Date.distantPast
//        }
//        try? context.save()
//        load()
//    }
//
//}

//
//import CoreData
//import Combine
//
//@MainActor
//final class ListDataViewModel: ObservableObject {
//
//    @Published var cities: [CityEntity] = []
//
//    private let context = PersistenceController.shared.container.viewContext
//
//    init() {
//        CityEntity.seed(context: context)
//        load()
//    }
//
//    func load() {
//        cities = CityEntity.fetchAll(context: context)
//    }
//
//    // 🔥 Clear ALL cached weather data
//    func clearWeatherCache() {
//        cities.forEach { city in
//            city.temperature = CacheConstants.invalidDouble
//            city.rain = CacheConstants.invalidDouble
//            city.snowfall = CacheConstants.invalidDouble
//            city.windSpeed = CacheConstants.invalidDouble
//            city.windDirection = CacheConstants.invalidDouble
//            city.isDay = CacheConstants.invalidInt
//        }
//
//        do {
//            try context.save()
//            load()
//        } catch {
//            print("Failed to clear cache")
//        }
//    }
//    
//    func addCity(name: String, latitude: Double, longitude: Double) {
//        let city = CityEntity(context: context)
//        city.id = UUID()
//        city.name = name
//        city.latitude = latitude
//        city.longitude = longitude
//
//        // cache defaults
//        city.temperature = CacheConstants.invalidDouble
//        city.rain = CacheConstants.invalidDouble
//        city.snowfall = CacheConstants.invalidDouble
//        city.windSpeed = CacheConstants.invalidDouble
//        city.windDirection = CacheConstants.invalidDouble
//        city.isDay = CacheConstants.invalidInt
//
//        do {
//            try context.save()
//            load()
//        } catch {
//            print("Failed to add city")
//        }
//    }
//
//    
//}

import Foundation
import SwiftUI
import CoreData
import Combine

@MainActor
final class ListDataViewModel: ObservableObject {
    @Published var cities: [CityEntity] = []

    private let context = PersistenceController.shared.container.viewContext

    func load() {
        let request: NSFetchRequest<CityEntity> = CityEntity.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \CityEntity.name, ascending: true)]

        do {
            cities = try context.fetch(request)
        } catch {
            print("Failed to fetch cities: \(error)")
        }
    }

    func addCity(_ city: GeocodingCity) {
        let newCity = CityEntity(context: context)
        newCity.name = city.name
        newCity.latitude = city.latitude
        newCity.longitude = city.longitude
        newCity.temperature = CacheConstants.invalidDouble
        newCity.isDay = Int16(CacheConstants.invalidInt)
        newCity.rain = CacheConstants.invalidDouble
        newCity.snowfall = CacheConstants.invalidDouble
        newCity.windSpeed = CacheConstants.invalidDouble
        newCity.windDirection = CacheConstants.invalidDouble

        do {
            try context.save()
            load()
        } catch {
            print("Failed to save cities/city: \(error)")
        }
    }

    func clearWeatherCache() {
        for city in cities {
            city.temperature = CacheConstants.invalidDouble
            city.isDay = Int16(CacheConstants.invalidInt)
            city.rain = CacheConstants.invalidDouble
            city.snowfall = CacheConstants.invalidDouble
            city.windSpeed = CacheConstants.invalidDouble
            city.windDirection = CacheConstants.invalidDouble
        }

        do {
            try context.save()
            load()
        } catch {
            print("Failed to clear cache: \(error)")
        }
    }
}
