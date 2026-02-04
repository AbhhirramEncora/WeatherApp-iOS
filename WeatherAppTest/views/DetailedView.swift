//
//  DetailedView.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/23/26.
//

//import SwiftUI
//
//struct DetailedView: View {
//    let location: Location
//    var body: some View {
//        ZStack{
//            Color.color
//                .ignoresSafeArea()
//            VStack{
//                Image(systemName: location.weather.icon)
//                    .font(.system(size: 80))
////                    .foregroundColor(.color)
//                
//                Text(location.name)
//                    .font(.largeTitle)
//                    .bold()
//
//                Text(location.temperature.temperatureText)
//                    .font(.title2)
//                
//                Divider()
//                
//                Text("A high-pressure system currently dominating the region will slide eastward by Monday evening, allowing a robust cold front to push through the area by Tuesday afternoon. The remainder of the week will see a shift to unsettled,, wintry conditions, with significant precipitation risks for Wednesday and Friday, followed by a drastic, sharp drop in temperatures to below-average values for the weekend. ")
//            }
//            .padding()
//        }
//    }
//}

//
//import SwiftUI
//
//struct DetailedView: View {
//    
//    let location: Location
//    
//    @State private var currentTemp: String = "Loading..."
//    
//    private let weatherService = WeatherService(
//        networkService: HttpNetworking()
//    )
//    
//    var body: some View {
//        ZStack {
//            Color.color.ignoresSafeArea()
//            
//            VStack(spacing: 16) {
//                
//                Image(systemName: location.weather.icon)
//                    .font(.system(size: 80))
//                
//                Text(location.name)
//                    .font(.largeTitle)
//                    .bold()
//                
//                Text(currentTemp)
//                    .font(.title2)
//                
//                Divider()
//                
//                Text("Live temperature fetched from Open-Meteo API")
//                    .font(.footnote)
//            }
//            .padding()
//        }
//        .task {
//            await fetchWeather()
//        }
//    }
//    
//    private func fetchWeather() async {
//        do {
//            let response = try await weatherService.fetchWeather(
//                latitude: location.latitude,
//                longitude: location.longitude
//            )
//            
//            currentTemp = "\(response.current.temperature2M)°C"
//        } catch {
//            currentTemp = "Failed to load"
//        }
//    }
//}

import SwiftUI
import Foundation
//
//struct DetailedView: View {
//    let location: Location
//    @StateObject private var viewModel = DetailedViewModel()
//
//    var body: some View {
//        ZStack {
//            Color.color.ignoresSafeArea()
//
//            if viewModel.isLoading {
//                ProgressView("Loading Weather...")
//            }
//            else if let weather = viewModel.weather {
//                VStack(spacing: 20) {
//
//                    // City
//                    Text(location.name)
//                        .font(.largeTitle)
//                        .bold()
//
//                    // Temperature
//                    Text("\(Int(weather.current.temperature2M))°C")
//                        .font(.system(size: 64))
//                        .bold()
//
//                    // Day / Night
//                    Text(weather.current.isDay == 1 ? "☀️ Day" : "🌙 Night")
//
//                    Divider()
//
//                    // Weather info cards
//                    HStack(spacing: 16) {
//
//                        WeatherInfoCard(
//                            title: "Rain",
//                            value: "\(weather.current.rain) mm",
//                            icon: "cloud.rain"
//                        )
//
//                        WeatherInfoCard(
//                            title: "Snow",
//                            value: "\(weather.current.snowfall) mm",
//                            icon: "snow"
//                        )
//                        
//                        
//                    }
//                    HStack(spacing: 16) {
//                        WeatherInfoCard(
//                            title: "Wind Speed",
//                            value: "\(weather.current.windSpeed10M) km/h",
//                            icon: "wind"
//                        )
//
//                        WeatherInfoCard(
//                            title: "Wind Dir",
//                            value: "\(Int(weather.current.windDirection10M))°",
//                            icon: "location.north"
//                        )
//                    }
//
//                }
//                .padding()
//            }
//            else if let error = viewModel.errorMessage {
//                Text(error)
//            }
//        }
//        .task {
//            await viewModel.fetchWeather(
//                latitude: location.latitude,
//                longitude: location.longitude
//            )
//        }
//    }
//}
//
//import SwiftUI
//
//struct DetailedView: View {
//
//    let city: CityEntity
//    @StateObject private var viewModel = DetailedViewModel()
//
//    var body: some View {
//        VStack(spacing: 24) {
//            Text(city.name ?? "")
//                .font(.largeTitle)
//                .bold()
//
//            Text(viewModel.temperatureText)
//                .font(.system(size: 64))
//                .bold()
//        }
//        .task {
//            await viewModel.fetchWeather(city: city)
//        }
//    }
//}

//
//import SwiftUI
//
//struct DetailedView: View {
//
//    let city: CityEntity
//    @StateObject private var viewModel = DetailedViewModel()
//
//    var body: some View {
//        ZStack {
//            Color("Color").ignoresSafeArea()
//
//            if viewModel.isLoading {
//                ProgressView("Loading Weather...")
//            }
//            else if let city = viewModel.city {
//                VStack(spacing: 24) {
//
//                    // City name
//                    Text(city.name ?? "")
//                        .font(.largeTitle)
//                        .bold()
//
//                    // Temperature
//                    Text(
//                        city.temperature == CacheConstants.invalidDouble
//                        ? "--"
//                        : "\(Int(city.temperature))°C"
//                    )
//                    .font(.system(size: 64))
//                    .bold()
//
//                    // Day / Night
//                    if city.isDay != CacheConstants.invalidInt {
//                        Text(city.isDay == 1 ? "☀️ Day" : "🌙 Night")
//                    }
//
//                    Divider()
//
//                    // Info cards
//                    VStack(spacing: 16) {
//                        HStack(spacing: 16) {
//                            WeatherInfoCard(
//                                title: "Rain",
//                                value: city.rain == CacheConstants.invalidDouble ? "--" : "\(city.rain) mm",
//                                icon: "cloud.rain"
//                            )
//
//                            WeatherInfoCard(
//                                title: "Snow",
//                                value: city.snowfall == CacheConstants.invalidDouble ? "--" : "\(city.snowfall) mm",
//                                icon: "snow"
//                            )
//                        }
//
//                        HStack(spacing: 16) {
//                            WeatherInfoCard(
//                                title: "Wind Speed",
//                                value: city.windSpeed == CacheConstants.invalidDouble ? "--" : "\(city.windSpeed) km/h",
//                                icon: "wind"
//                            )
//
//                            WeatherInfoCard(
//                                title: "Wind Dir",
//                                value: city.windDirection == CacheConstants.invalidDouble ? "--" : "\(Int(city.windDirection))°",
//                                icon: "location.north"
//                            )
//                        }
//                    }
//                }
//                .padding()
//            }
//            else if let error = viewModel.errorMessage {
//                Text(error)
//            }
//        }
//        .task {
//            await viewModel.fetchWeather(city: city)
//        }
//    }
//}

import SwiftUI

struct DetailedView: View {

    let city: CityEntity
    @StateObject private var viewModel = DetailedViewModel()

    var body: some View {
        ZStack {
            Color("Color").ignoresSafeArea()

            if viewModel.isLoading {
                ProgressView("Loading Weather...")
            }
            else if let city = viewModel.city {
                VStack(spacing: 24) {

                    Text(city.name ?? "")
                        .font(.largeTitle)
                        .bold()

                    Text(
                        city.temperature == CacheConstants.invalidDouble
                        ? "--"
                        : "\(Int(city.temperature))°C"
                    )
                    .font(.system(size: 64))
                    .bold()

                    if city.isDay != CacheConstants.invalidInt {
                        Text(city.isDay == 1 ? "☀️ Day" : "🌙 Night")
                    }

                    Divider()

                    VStack(spacing: 16) {
                        HStack(spacing: 16) {
                            WeatherInfoCard(
                                title: "Rain",
                                value: city.rain == CacheConstants.invalidDouble ? "--" : "\(city.rain) mm",
                                icon: "cloud.rain"
                            )
                            WeatherInfoCard(
                                title: "Snow",
                                value: city.snowfall == CacheConstants.invalidDouble ? "--" : "\(city.snowfall) mm",
                                icon: "snow"
                            )
                        }

                        HStack(spacing: 16) {
                            WeatherInfoCard(
                                title: "Wind Speed",
                                value: city.windSpeed == CacheConstants.invalidDouble ? "--" : "\(city.windSpeed) km/h",
                                icon: "wind"
                            )
                            WeatherInfoCard(
                                title: "Wind Dir",
                                value: city.windDirection == CacheConstants.invalidDouble ? "--" : "\(Int(city.windDirection))°",
                                icon: "location.north"
                            )
                        }
                    }
                }
                .padding()
            }
            else if let error = viewModel.errorMessage {
                Text(error)
            }
        }
        .task {
            await viewModel.fetchWeather(city: city)
        }
    }
}


