//
//  WeatherListViewModel.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

protocol WeatherListViewModelProtocol {
    var weathers: [Weather] { get }
  
    func fetchWeather()
    
}

final class WeatherListViewModel: ObservableObject {
    @Published var weathers = [Weather]()

    
   
    
    var dataManager: WeatherDataManagerProtocol
    
    init(dataManager: WeatherDataManagerProtocol = WeatherDataManager.shared) {
        self.dataManager = dataManager
        fetchWeather()
        
    }
}

extension WeatherListViewModel: WeatherListViewModelProtocol {
    func fetchWeather() {
       weathers =  dataManager.fetchWeatherList()
    }
    
    
    
}

