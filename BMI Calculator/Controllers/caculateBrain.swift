//
//  caculateBrain.swift
//  BMI Calculator
//
//  Created by Thiện Đăng on 9/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CaculateBrain {
    var Bmi : BMI = BMI(value: 0.0, advice: "Chưa có lời khuyên cho bạn ! ", color: UIColor.red)
    
    func getBmiValue() -> BMI {
        return Bmi
    }
    
    mutating func caculateBmi(height : Float , weight : Float) -> Void {
        let bmiValue =  Float(weight / pow(height, 2))
        var bmiadvice = "no Hope"
        var bmiColor = UIColor.red
        if(bmiValue < 18.5){
            bmiadvice = "Không đủ ký rồi, ăn nhiều vào nhé!!"
            bmiColor = UIColor.green
        }else if (bmiValue > 18.5 && bmiValue < 24.9){
            bmiadvice = "Ổn rồi cố gắng giữ vững!!"
            bmiColor = UIColor.blue
        }else {
            bmiadvice = "Mập qúa rồi giảm cân đi !"
            bmiColor = UIColor.yellow
        }
        Bmi = BMI(value: bmiValue, advice: bmiadvice, color: bmiColor)
    }
}
