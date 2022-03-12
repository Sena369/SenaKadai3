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

    @IBOutlet private weak var firstText: UITextField!
    @IBOutlet private weak var secondText: UITextField!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
 
    @IBAction func calculateButton(_ sender: Any) {
        
        let firstValue = Int(firstText.text ?? "") ?? 0
        let secondValue = Int(secondText.text ?? "") ?? 0
        
        let num1 : Int
        let num2 : Int
        
        if firstSwitch.isOn == true {
            num1 = 0 - firstValue
        } else {
            num1 = firstValue
        }
        
        if secondSwitch.isOn == true {
            num2 = 0 - secondValue
        } else {
            num2 = secondValue
        }
        
        firstLabel.text = String(num1)
        secondLabel.text = String(num2)
        
        resultLabel.text = String(num1 + num2)
        
    }
}

