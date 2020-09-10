//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Thiện Đăng on 9/10/20.
//  Copyright © 2020 Thiện Đăng. All rights reserved.

import Foundation
import UIKit

class ResultController: UIViewController {
    
    var BmiValue = "0.0"
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func recaculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //some code here
        resultLabel.text = String(BmiValue)
    }
    
}
