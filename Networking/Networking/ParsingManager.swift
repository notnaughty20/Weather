//
//  ParsingManager.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import Foundation
import SwiftyJSON

class ParsingManager {
    
    static func parsingCurrentWeather(data: Data) -> WeatherData? {

        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            var weatherData = WeatherData()
            weatherData = try decoder.decode(WeatherData.self, from: data)
            
            return weatherData
        } catch let error {
            print(error.localizedDescription)
            
            return nil
        }
    }
    
    static func parsingJokeFrom(json: Any) -> Joke {
        
        let json = JSON(json)
        let setup: String? = json["setup"].stringValue
        let delivery: String? = json["delivery"].stringValue
        let jokeL: String? = json["joke"].stringValue
        
        let joke = Joke(setup: setup ?? nil,
                        delivery: delivery ?? nil,
                        joke: jokeL ?? nil )
        return joke
    }
    
}
