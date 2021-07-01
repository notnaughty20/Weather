//
//  Joke.swift
//  Networking
//
//  Created by Влад Мади on 21.05.2021.
//

import Foundation

class Joke {

    var setup: String?
    var delivery: String?
    var joke: String?
    
    init(setup: String?, delivery: String?, joke: String?) {
        self.setup = setup
        self.delivery = delivery
        self.joke = joke
    }
    
}

