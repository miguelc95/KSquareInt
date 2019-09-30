//
//  ViewController.swift
//  KSquareInterview
//
//  Created by Miguel Fernando Cuellar Gauna on 9/30/19.
//  Copyright © 2019 Miguel Fernando Cuellar Gauna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTxtField: UITextField!
    @IBOutlet weak var weatherLbl: UILabel!
    @IBOutlet weak var txtFieldTopConstraint: NSLayoutConstraint!
    //Good weather, bad weather, no info
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        txtFieldTopConstraint.constant = self.view.frame.height * 0.25
    }

    @IBAction func getWeather(_ sender: Any) {
        if let zipCode = zipCodeTxtField.text, zipCode != "" {
            Network.getWeather(zipCode: zipCode) { weather in
                weatherLbl.text = weather
            }
        } else {
            self.showAlert(message: "Please fill the Zip Code")
        }
    }
    
}

