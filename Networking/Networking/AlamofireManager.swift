//
//  AlamofireManager.swift
//  Networking
//
//  Created by Влад Мади on 21.05.2021.
//

import Foundation
import Alamofire

class AlamofireManager {
    
    static func getJoke(completion: @escaping (Joke) -> ()) {
        let url = URLManager().createJokeUrl(method: .joke)
        AF.request(url).responseJSON { response in
            switch response.result {
            case .success(let json):
                print(json)
                let joke = ParsingManager.parsingJokeFrom(json: json)
                completion(joke)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
