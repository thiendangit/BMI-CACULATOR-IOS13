//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Thiện Đăng on 9/10/20.
//  Copyright © 2020 Thiện Đăng. All rights reserved.

import Foundation
import UIKit

class ResultController: UIViewController {
    
    var Bmi : BMI?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBAction func recaculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //some code here
        resultLabel.text = String(format: "%.2f", Bmi?.value ?? "0.0")
        adviceLabel.text = String(Bmi!.advice)
        adviceLabel.textColor = Bmi!.color
    }
    
}
