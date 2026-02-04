//
//  WeatherAppTestApp.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/23/26.
//

//import SwiftUI
//import SwiftData
//internal import CoreData

//@main
//struct WeatherAppTestApp: App {
//    var body: some Scene {
//        WindowGroup {
//            LandingView()
////                .modelContainer(for: StoredLocations.self)
//        }
//    }
//}

import SwiftUI
import CoreData

@main
struct WeatherAppTestApp: App {
    var body: some Scene {
        WindowGroup {
//            ListView()
//                .environment(
//                    \.managedObjectContext,
//                    PersistenceController.shared.container.viewContext
//                )
            LandingView()
            
        }
    }
}
