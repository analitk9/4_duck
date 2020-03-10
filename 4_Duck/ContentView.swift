//
//  ContentView.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                WeatherListView(viewModel:  WeatherListViewModel(dataManager: MockWeatherDataManager()))
                  .tag(0)
                  .tabItem {
                      VStack {
                          Text("Weather")
                          Image(systemName: "thermometer")
                      }
                  }
                ClothesListView(viewModel: ClothesListViewModel(dataManager: MockClothesDataManager()))
                    .tag(1)
                    .tabItem {
                        VStack {
                            Text("Clothes")
                            Image(systemName: "person")
                        }
                    }
                AboutView()
                    .tag(2)
                    .tabItem {
                        VStack {
                            Image(systemName: "star.fill")
                            Text("About")
                        }
                    }
            }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


