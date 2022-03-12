//
//  ViewController.swift
//  KadaiChallenge3
//
//  Created by 澤田世那 on 2022/03/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet private var textField: [UITextField]!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
 
    @IBAction func calculateButton(_ sender: Any) {
        
        let value = textField.map{ Int($0.text ?? "") ?? 0 }
        let num1 = switchJudge(firstSwitch, value[0])
        let num2 = switchJudge(secondSwitch, value[1])
        
        firstLabel.text = String(num1)
        secondLabel.text = String(num2)
        
        resultLabel.text = String(num1 + num2)
        
        func switchJudge(_ symbolSwitch: UISwitch , _ textValue: Int) -> Int {
        
            if symbolSwitch.isOn == true {
                return 0 - textValue
            } else {
                return textValue
            }
        }
    }
}
        
//        var num : [Int] = []
//        num = { (symbolSwitch , textValue) ->  in
//            if symbolSwitch.isOn == true {
//                num = 0 - textValue
//            } else {
//                num = textValue
//            }
//        }
        
//        num[0] = num(firstSwitch, value[0])
//        num[1] = num(secondSwitch, value[1])
        
//        symbolSwitch.forEach { if $0.isOn == true {
//        if symbolSwitch[0].isOn == true {
//            num[0] = 0 - value[0]
//            num = value.map{ element in (0 - element) }
//        } else {
//            num[0] = value[0]
//        }
        
//        if symbolSwitch[1].isOn == true {
//            num[1] = 0 - value[1]
//            num = value.map{ element in (0 - element) }
//        } else {
//            num[1] = value[1]
//        }
//        print(num)
        
//        var textLabel = [firstLabel.text , secondLabel.text]
//        textLabel = num.map { String($0) }
        
//        resultLabel.text = String(num.forEach(element in element.sum))

        
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
                


