//
//  ViewController.swift
//  oddEven
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func evenOdd(_ sender: Any) {
        let number = Int(numberField.text ?? "") ?? 0
        if number == 0 {
            resultLabel.text = "Invalid Input"
        } else {
            resultLabel.text = number % 2 == 0 ? "Even" : "Odd"
        }
    }
}

