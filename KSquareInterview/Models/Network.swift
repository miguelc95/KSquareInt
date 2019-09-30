//
//  Network.swift
//  KSquareInterview
//
//  Created by Miguel Fernando Cuellar Gauna on 9/30/19.
//  Copyright © 2019 Miguel Fernando Cuellar Gauna. All rights reserved.
//

import Foundation


class Network {
    
    public static func getWeather(zipCode: String, completionHandler: (String) -> Void) {
        
        if let zipCode = Int(zipCode) {
            if zipCode > 1234 {
                completionHandler(weather.weatherTypes.bad.rawValue)
            } else if zipCode < 800 {
                completionHandler(weather.weatherTypes.good.rawValue)
            } else {
                completionHandler(weather.weatherTypes.unknown.rawValue)
            }
        } else {
            completionHandler(weather.weatherTypes.unknown.rawValue)
        }
    }
}

