//
//  ViewController.swift
//  Networking
//
//  Created by Влад Мади on 17.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func weatherNowAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "WeatherNow", sender: nil)
    }
    
}

