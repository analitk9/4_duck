//
//  WeatherListViewRow.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI

struct WeatherListViewRow: View {
    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        return dateFormatter
    }()
    var weather: Weather
    var body: some View {
        VStack(alignment: .leading){
            Text("\(weather.weatherName)")
                .font(.headline)
            HStack(alignment: .center){
            Image("\(weather.weatherIconName ?? "zzz")")
            VStack(alignment: .leading){
                Text("\(dateFormatter.string(from: weather.date))")
                Text("t. \(Int(weather.temperature)) C")
             
            }
        }
        }
    }
}

struct WeatherListViewRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherListViewRow(weather: MockWeatherDataManager.shared.fetchWeatherList()[0])
    }
}
