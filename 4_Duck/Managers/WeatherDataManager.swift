//
//  WeatherDataManager.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

protocol WeatherDataManagerProtocol {
   func fetchWeatherList() -> [Weather]
}

class WeatherDataManager {
    static let shared: WeatherDataManagerProtocol = WeatherDataManager()
    
    private var weathers = [Weather]()
    
    private init() {
        
    }
}

extension WeatherDataManager: WeatherDataManagerProtocol {
    func fetchWeatherList() -> [Weather] {
        [Weather]()
    }
    
    
}

