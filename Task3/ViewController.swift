//
//  ViewController.swift
//  Task3
//
//  Created by ちいつんしん on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    @IBOutlet private weak var numberLabel1: UILabel!
    @IBOutlet private weak var numberLabel2: UILabel!

    @IBOutlet private weak var calculateButton: UIButton!

    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func calculate(_ sender: Any) {

        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0

        let signedNum1: Int

        if switch1.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Int

        if switch2.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }

        numberLabel1.text = String(signedNum1)
        numberLabel2.text = String(signedNum2)

        resultLabel.text = String(signedNum1 + signedNum2)
    }

}
