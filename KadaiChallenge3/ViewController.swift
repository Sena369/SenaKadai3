//
//  ViewController.swift
//  KadaiChallenge3
//
//  Created by 澤田世那 on 2022/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var textFields: [UITextField]!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
 
    @IBAction func calculateButton(_ sender: Any) {

        let textFieldValues = textFields.map{ Int($0.text ?? "") ?? 0 }
        let signSwitches : [UISwitch] = [firstSwitch, secondSwitch]
        let signedNums = zip(signSwitches, textFieldValues).map { $0.isOn ? -$1 : $1 }

        firstLabel.text = String(signedNums[0])
        secondLabel.text = String(signedNums[1])
        resultLabel.text = String(signedNums.reduce(0,+))
    }
}
        

                


