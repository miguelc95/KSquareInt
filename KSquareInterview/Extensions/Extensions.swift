//
//  Extensions.swift
//  KSquareInterview
//
//  Created by Miguel Fernando Cuellar Gauna on 9/30/19.
//  Copyright © 2019 Miguel Fernando Cuellar Gauna. All rights reserved.
//

import UIKit


extension UIViewController {
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        self.present(alert, animated: true)
    }
}
