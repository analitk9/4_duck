//
//  WeatherListView.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI

struct WeatherListView: View {
    @ObservedObject var viewModel = WeatherListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.weathers) { weather in
                NavigationLink(destination:
                    ClothesListView(viewModel: ClothesListViewModel(dataManager: MockClothesDataManager()), selectWeather: weather)
                ) {
                    WeatherListViewRow(weather: weather)
                }
               
                
            }.navigationBarTitle("Погода")
        }
        
    }
}

struct WeatherListView_Previews: PreviewProvider {
    static var previews: some View {
        var view = WeatherListView()
        view.viewModel = WeatherListViewModel(dataManager: MockWeatherDataManager())
        return view
    }
}
