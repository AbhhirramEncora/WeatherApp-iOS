//
//  AddCityView.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/28/26.
//

import SwiftUI

struct AddCityView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""
    @State private var latitude = ""
    @State private var longitude = ""
    var onAdd:(String , Double , Double) ->Void
    var body: some View {
        NavigationStack {
                   Form {
                       TextField("City Name", text: $name)
                       TextField("Latitude", text: $latitude)
                           .keyboardType(.decimalPad)
                       TextField("Longitude", text: $longitude)
                           .keyboardType(.decimalPad)
                   }
                   .navigationTitle("Add City")
                   .toolbar {
                       ToolbarItem(placement: .navigationBarLeading) {
                           Button("Cancel") { dismiss() }
                       }
                       ToolbarItem(placement: .navigationBarTrailing) {
                           Button("Add") {
                               guard let lat = Double(latitude),
                                     let lon = Double(longitude),
                                     !name.isEmpty else { return }
                               onAdd(name, lat, lon)
                               dismiss()
                           }
                       }
                   }
               }
    }
}


