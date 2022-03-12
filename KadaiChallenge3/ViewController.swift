//
//  ViewController.swift
//  KadaiChallenge3
//
//  Created by 澤田世那 on 2022/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var textField: [UITextField]!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
 
    @IBAction func calculateButton(_ sender: Any) {
        
        let textFieldValue : [Int] = textField.map{ Int($0.text ?? "") ?? 0 }
        firstLabel.text  = String(switchJudge(firstSwitch, textFieldValue[0]))
        secondLabel.text = String(switchJudge(secondSwitch, textFieldValue[1]))
        resultLabel.text = String(switchJudge(firstSwitch, textFieldValue[0]) + switchJudge(secondSwitch, textFieldValue[1]))
        
        func switchJudge(_ symbolSwitch: UISwitch , _ textValue: Int) -> Int {
        
            if symbolSwitch.isOn == true {
                return 0 - textValue
            } else {
                return textValue
            }
        }
    }
}
        
//        let firstValue = Int(firstText.text ?? "") ?? 0
//        let secondValue = Int(secondText.text ?? "") ?? 0
                
//        let num1 : Int
//        let num2 : Int
        
//        if firstSwitch.isOn == true {
//            num1 = 0 - firstValue
//        } else {
//            num1 = firstValue
//        }
//
//        if secondSwitch.isOn == true {
//            num2 = 0 - secondValue
//        } else {
//            num2 = secondValue
//        }
        
       
//
                


