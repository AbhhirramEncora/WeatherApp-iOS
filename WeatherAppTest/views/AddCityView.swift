//
//  AddCityView.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/28/26.
//

//
//import SwiftUI
//
//struct AddCityView: View {
//
//    @Environment(\.dismiss) private var dismiss
//    @StateObject private var viewModel = AddCityViewModel()
//
//    var onAdd: (String, Double, Double) -> Void
//
//    var body: some View {
//        NavigationStack {
//            List {
//                if viewModel.isLoading {
//                    ProgressView()
//                }
//
//                ForEach(viewModel.results) { city in
//                    Button {
//                        onAdd(city.name, city.latitude, city.longitude)
//                        dismiss()
//                    } label: {
//                        VStack(alignment: .leading) {
//                            Text(city.name)
//                                .font(.headline)
//
//                            Text("\(city.country ?? "") • \(city.latitude), \(city.longitude)")
//                                .font(.caption)
//                                .foregroundColor(.secondary)
//                        }
//                    }
//                }
//            }
//            .searchable(text: $viewModel.searchText)
//            .onChange(of: viewModel.searchText) {
//                viewModel.search()
//            }
//
//            .navigationTitle("Add City")
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button("Cancel") { dismiss() }
//                }
//            }
//        }
//    }
//}
//
//
//

//
//import SwiftUI
//
//struct AddCityView: View {
//
//    @Environment(\.dismiss) private var dismiss
//    @ObservedObject var viewModel: AddCityViewModel
//    var onSelect: (GeocodingCity) -> Void
//
//    var body: some View {
//        NavigationStack {
//            List {
//                if viewModel.isLoading {
//                    ProgressView()
//                }
//
//                ForEach(viewModel.results) { city in
//                    Button {
//                        onSelect(city)
//                        dismiss()
//                    } label: {
//                        VStack(alignment: .leading) {
//                            Text(city.name)
//                                .font(.headline)
//                            Text("\(city.latitude), \(city.longitude)")
//                                .font(.caption)
//                        }
//                    }
//                }
//            }
//            .searchable(text: $viewModel.searchText)
//            .onChange(of: viewModel.searchText) { _ in
//                viewModel.search()
//            }
//            .navigationTitle("Search City")
//        }
//    }
//}
//
//
//
//import SwiftUI
//
//struct AddCityView: View {
//
//    @Environment(\.dismiss) private var dismiss
//    @ObservedObject var viewModel: AddCityViewModel
//    var onSelect: (GeocodingCity) -> Void
//
//    var body: some View {
//        NavigationStack {
//            List {
//                if viewModel.isLoading {
//                    ProgressView()
//                }
//
//                ForEach(viewModel.results) { city in
//                    Button {
//                        onSelect(city)
//                        dismiss()
//                    } label: {
//                        VStack(alignment: .leading) {
//                            Text(city.name)
//                                .font(.headline)
//                            Text("\(city.latitude), \(city.longitude)")
//                                .font(.caption)
//                        }
//                    }
//                }
//            }
//            .searchable(text: $viewModel.searchText)
//            .onChange(of: viewModel.searchText) { _ in
//                viewModel.search()
//            }
//            .navigationTitle("Search City")
//        }
//    }
//}

import SwiftUI

struct AddCityView: View {

    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: AddCityViewModel
    var onSelect: (GeocodingCity) -> Void

    var body: some View {
        NavigationStack {
            List {

                if viewModel.isLoading {
                    ProgressView()
                        .frame(maxWidth: .infinity, alignment: .center)
                }

                ForEach(viewModel.results) { city in
                    Button {
                        onSelect(city)
                        dismiss()
                    } label: {
                        VStack(alignment: .leading, spacing: 8) {

                            Text(city.name)
                                .font(.headline)

                            Text("\(city.latitude), \(city.longitude)")
                                .font(.caption)
                                .foregroundColor(.secondary)

                            CityMapPreview(
                                latitude: city.latitude,
                                longitude: city.longitude
                            )
                        }
                        .padding(.vertical, 6)
                    }
                }

            }
            .searchable(text: $viewModel.searchText)
            .task(id: viewModel.searchText) {
                await viewModel.search(for: viewModel.searchText)
            }

            .navigationTitle("Search City")
        }
    }
}
