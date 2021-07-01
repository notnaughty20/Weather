//
//  NetworkManager.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import Foundation

class NetworkManager {
    
    static func getCurrentWeather(params: [String], completion: @escaping (_ weather: WeatherData) -> ()) {

        guard let url = URL(string: URLManager().createUrl(method: .weatherNow, params: params)) else {
            print("Инвалид УРЛ")
            return
        }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            
            guard let response = response, let data = data else {
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            guard let weatherData = ParsingManager.parsingCurrentWeather(data: data) else {
                print("не удалось сконвертировать данные")
                return
            }
            
            completion(weatherData)
        
        }.resume()
        
        
        
    }
    
}
