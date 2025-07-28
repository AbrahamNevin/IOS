//
//  ViewController.swift
//  celciusToF
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusOutput: UILabel!
    @IBOutlet weak var fahrenheitInput: UITextField!
    @IBOutlet weak var fahrenheitOutput: UILabel!
    @IBOutlet weak var celsiusInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func celsiusToFahenheit(_ sender: Any) {
        let number:Double = Double(celsiusInput.text ?? "") ?? 0
        if number == 0 {
            fahrenheitOutput.text = "Invalid Input"
        } else {
            fahrenheitOutput.text = "\(number * 9/5 + 32)"        }
    }
    @IBAction func fahrenheitToCelcius(_ sender: Any) {
        let temp:Double = Double(fahrenheitInput.text ?? "") ?? 0
        if temp == 0 {
            celsiusOutput.text = "Invalid Input"
        } else {
            celsiusOutput.text = "\((temp - 32) * 5/9)"
        }
    }
}

