//
//  Weather.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 08.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation


typealias Celsius = Double

struct Weather: Identifiable {
    let id = UUID()
    let cityName: String
    let date: Date
    let temperature: Celsius
    let pressure: Double
    let humidity: Double
    let weatherName: String
    let weatherIconName: String?
    let windSpeed: Double
    let windDegrees: Double
}
