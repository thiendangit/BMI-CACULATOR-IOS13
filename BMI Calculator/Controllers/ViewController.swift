//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Thiện Đăng on 9/10/20.
//  Copyright © 2020 Thiện Đăng. All rights reserved.
//

import UIKit

class caculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weight: UILabel!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f",sender.value)) m"
    }
    
    @IBAction func widthSliderChanged(_ sender: UISlider) {
        weight.text = "\(String(format: "%.f",sender.value)) Kg"
    }
    
    @IBAction func buttonCalculate(_ sender: UIButton) {
        let weight = (weightSlider.value)
        let height = (heightSlider.value)
        let BMI = Float(weight/(pow(height,2)))
        print(BMI)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var resultScreen = ResultController()
        
    }
}

