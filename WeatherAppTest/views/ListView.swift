//
//  ListView.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/23/26.
//

import SwiftUI
import SwiftData
//
//struct ListView: View {
//    @State private var searchedtext: String = ""
//    
//    @StateObject private var viewModel = ListDataViewModel()
//    //    @Environment(\.modelContext) private var context
//    //    @Query var locations: [StoredLocations]
//    @State private var searchedText=""
//    //    @State private var showingAddCitySheet = false
//    
//    var body: some View {
//        NavigationStack{
//            ZStack{
//                Color.color
//                    .ignoresSafeArea()
//                VStack{
//                    HStack(alignment: .top,spacing: 20){
//                        TextField("City not found Click + icon above", text: $searchedtext)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                        Button("Search"){
//                            
//                        }
//                        .buttonStyle(.bordered)
//                        .foregroundColor(.white)
//                    }
//                    .padding(15)
//                    List(viewModel.filteredLocations) { location in
//                        NavigationLink(destination: DetailedView(location: location)){
//                            HStack(spacing: 16) {
//                                
//                                VStack(alignment: .leading) {
//                                    Text(location.name)
//                                        .font(.headline)
//                                }
//                            }
//                        }
//                        .padding(.vertical, 6)
//                    }
//                    
//                    
//                }
//            }
//        }
//    }
//}
//            

import SwiftUI	

struct ListView: View {

    @StateObject private var viewModel = ListDataViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.cities) { city in
                    NavigationLink {
                        DetailedView(city: city)
                    } label: {
                        HStack {
                            Text(city.name ?? "")
                            Spacer()
                            if city.temperature == CacheConstants.invalidTemperature {
                                Text("--")
                                    .foregroundColor	(.gray)
                            } else {
                                Text("\(Int(city.temperature))°C")
                            }

                        }
                    }
                }
            }
            .navigationTitle("Cities")
            .toolbar {
                Button("Clear Cache") {
                    viewModel.clearTemperatureCache()
                }
            }
        }
    }
}
