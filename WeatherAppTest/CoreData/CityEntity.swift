//
//  CityEntity.swift
//  WeatherAppTest
//
//  Created by rentamac on 1/28/26.
//

import CoreData

extension CityEntity {

    static func fetchAll(context: NSManagedObjectContext) -> [CityEntity] {
        let request = CityEntity.fetchRequest()
        return (try? context.fetch(request)) ?? []
    }

    static func seed(context: NSManagedObjectContext) {
        guard fetchAll(context: context).isEmpty else { return }

        let cities = [
            ("Mumbai", 19.0760, 72.8777),
            ("New York", 40.730610, -73.935242),
            ("London", 51.50735, -0.12776),
            ("Tokyo", 35.6895, 139.6917)
        ]

        cities.forEach {
            let city = CityEntity(context: context)
            city.id = UUID()
            city.name = $0.0
            city.latitude = $0.1
            city.longitude = $0.2
            city.temperature = CacheConstants.invalidTemperature
            city.lastUpdated = Date.distantPast
        }

        try? context.save()
    }
}
