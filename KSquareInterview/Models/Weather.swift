//
//  Weather.swift
//  KSquareInterview
//
//  Created by Miguel Fernando Cuellar Gauna on 9/30/19.
//  Copyright © 2019 Miguel Fernando Cuellar Gauna. All rights reserved.
//

import Foundation


class weather {
    var zipCode : Int
    var weather: String
    
    
    enum weatherTypes : String {
        case good
        case bad
        case unknown
    }
    
    
    init() {
        zipCode = 0
        weather = ""
    }
    
//   required init(from: Decoder) {
//
//    }
}
