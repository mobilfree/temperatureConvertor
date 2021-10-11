//
//  ViewController.swift
//  temperatureConvertor
//
//  Created by Artem on 10.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiuslabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiuslabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32 ))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    
    }
    
    
    
}

