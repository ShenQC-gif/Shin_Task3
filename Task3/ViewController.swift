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

        var num1 = Int(textField1.text ?? "") ?? 0
        var num2 = Int(textField2.text ?? "") ?? 0

        switch switch1.isOn {
        case true:
            num1 = -num1
        case false:
            break
        }

        switch switch2.isOn {
        case true:
            num2 = -num2
        case false:
            break
        }

        numberLabel1.text = String(num1)
        numberLabel2.text = String(num2)

        resultLabel.text = String(num1 + num2)
    }

}
