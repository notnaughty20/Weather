//
//  URLManager.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import Foundation

class URLManager {
    
    let tunnel = "https://"
    let apiUrl = "api.openweathermap.org"
    
    let jokeUrl = "https://jokeapi.dev"
    
    func createUrl(method: ApiMethod, params: [String]) -> String {
        
        let path = tunnel + apiUrl + method.rawValue
        
        var parameters = params[0]
        
        for param in params {
            if param != params[0] {
                parameters += "&\(param)"
            }
        }
        
        return path + parameters
    }
    
    func createJokeUrl(method: ApiMethod) -> String {
        
        return jokeUrl + method.rawValue
        
    }
    
}
