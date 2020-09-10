//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        
    }
}

