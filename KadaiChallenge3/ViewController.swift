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

        let textFieldValue = textField.map{ Int($0.text ?? "") ?? 0 }
        let num : (UISwitch,Int) -> Int = {
            $0.isOn ?  -$1 : $1
        }

        let num1 = num(firstSwitch, textFieldValue[0])
        let num2 = num(secondSwitch, textFieldValue[1])

        firstLabel.text = String(num1)
        secondLabel.text = String(num2)
        resultLabel.text = String(num1 + num2)
    }
}
        

                


