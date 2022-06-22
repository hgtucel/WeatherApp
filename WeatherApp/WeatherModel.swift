//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Gürkan Tüçel on 22.06.2022.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weatherModel = try? newJSONDecoder().decode(WeatherModel.self, from: jsonData)

import Foundation

struct WeatherModel: Codable {
    
    let timezone: String?
    let current: CurrentWeather?

}

struct CurrentWeather: Codable {
    
    let temp: Float?
    let weather: [WeatherInfo]?
    
}

struct WeatherInfo: Codable {
    let main: String?
    let description: String?
}
