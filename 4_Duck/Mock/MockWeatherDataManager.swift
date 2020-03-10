//
//  WeatherMockDataManager.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

class MockWeatherDataManager {
    
    static let shared: WeatherDataManagerProtocol = MockWeatherDataManager()
    
    private var weathers = [Weather]()
    
     init() {
        weathers = [
            Weather(cityName: "СПб", date: Date(), temperature: 10, pressure: 1012, humidity: 23, weatherName: "Ясно", weatherIconName: "01d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 10, pressure: 1012, humidity: 23, weatherName: "Ночь Ясно", weatherIconName: "01n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 10, pressure: 1012, humidity: 23, weatherName: "Переменная облачность", weatherIconName: "02d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 10, pressure: 1012, humidity: 23, weatherName: "Ночь Переменная облачность", weatherIconName: "02n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 10, pressure: 1012, humidity: 23, weatherName: "Облачность", weatherIconName: "03d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 20, pressure: 1012, humidity: 23, weatherName: "Ночь  облачностью", weatherIconName: "03n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 20, pressure: 1012, humidity: 23, weatherName: "Сильная облачность", weatherIconName: "04d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 20, pressure: 1012, humidity: 23, weatherName: "Ночь с сильной облачностью", weatherIconName: "04n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 20, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "09d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 25, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "09n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 25, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "10d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 25, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "10n", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 25, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "13d", windSpeed: 4, windDegrees: 4),
            Weather(cityName: "СПб", date: Date(), temperature: 25, pressure: 1012, humidity: 23, weatherName: "Ночь с облачностью", weatherIconName: "13n", windSpeed: 4, windDegrees: 4)
            
        ]
        
    }
    
    
}

extension MockWeatherDataManager: WeatherDataManagerProtocol {
    
    func fetchWeatherList() -> [Weather] {
        weathers
    }
    
    
}
