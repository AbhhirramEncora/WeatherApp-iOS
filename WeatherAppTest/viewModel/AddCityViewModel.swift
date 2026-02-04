//
//  AddCityViewModel.swift
//  WeatherAppTest
//
//  Created by rentamac on 1/30/26.
//
import Foundation
import SwiftUI
import Combine

@MainActor
final class AddCityViewModel: ObservableObject {

    @Published var searchText = ""
    @Published var results: [GeocodingCity] = []
    @Published var isLoading = false

    private let service = GeocodingService()

    func search(for text: String) async {
        guard !text.isEmpty else {
            results = []
            return
        }

        isLoading = true
        defer { isLoading = false }

        do {
            results = try await service.searchCity(name: text)
        } catch {
            results = []
            print("❌ Geocoding failed:", error)
        }
    }
}
