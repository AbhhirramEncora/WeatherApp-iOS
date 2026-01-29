//
//  LandingView.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/23/26.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.color
                    .ignoresSafeArea()
                VStack {
                    Image("iconUmb")
                        .resizable()
                        .frame(width: 150 , height: 150)
                        .padding(.top,-100)
                    Text("Breeze")
                        .fontWeight(.heavy)
                        .font(Font.largeTitle)
                        .bold()
                        .padding(.leading, 20)
                    Text("Weather Application")
                        .padding(.leading,20)
                    
                    VStack{
                        NavigationLink(destination: ListView()){
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                                .background(Circle().fill(.blue))
                        }
                        .padding(.top, 45)
                    }
                    Text("Abhhirram Veedhi")
                        .padding(.top,30)
                        .bold()
                        .font(.title2)
                        
                    
                }
            }
            
            
        }
    }
}

#Preview {
    LandingView()
}
