//
//  WeatherData.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import Foundation

class WeatherData: Decodable {
    
    var name: String = ""
    
    var main = [
        "temp": 0.0,
        "tempMax": 0.0,
        "tempMin": 0.0]
    
    var wind = [
        "deg": 0,
        "speed": 0]
    
    var weather = [Weather]()
    
}
