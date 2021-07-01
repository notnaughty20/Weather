//
//  WeatherNowViewController.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import UIKit

class WeatherNowViewController: UIViewController {
    
    @IBOutlet weak var currentTempLabel: UILabel!
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getWeather()
        getJoke()
    }
    
    func getJoke() {
        AlamofireManager.getJoke { joke in
            
            if let text = joke.joke, text != "" {
                DispatchQueue.main.async {
                    self.jokeLabel.text = text
                }
            } else {
                let setup = joke.setup!
                let delivery = joke.delivery!
                
                DispatchQueue.main.async {
                    self.jokeLabel.text = "\(setup) \(delivery)"
                }
            }
            
        }
    }
    
    func getWeather() {
        NetworkManager.getCurrentWeather(params: ["q=Moscow", "appid=b9c81050cef9855eeaca27cf97ae5d26"]) { data in
            
            DispatchQueue.main.async {
                let tempString = "\(Int(data.main["temp"]!) - 273) C"
                self.currentTempLabel.text = tempString
            }
        }
    }
    

    @IBAction func newJokeAction(_ sender: UIButton) {
        getJoke()
    }
    
}
