//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Thiện Đăng on 9/10/20.
//  Copyright © 2020 Thiện Đăng. All rights reserved.
//

import UIKit

class CaculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weight: UILabel!
    
    var BmiValue = "0.0"
    
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
        BmiValue = String(format: "%.1f", BMI)
//        var resultScreen = ResultController()
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoResult"){
            let data = segue.destination as! ResultController
            data.BmiValue = BmiValue
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

