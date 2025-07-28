//
//  ViewController.swift
//  Factorial
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultFact: UILabel!
    @IBOutlet weak var resultFactorial: UILabel!
    @IBOutlet weak var factorialNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateFactorial(_ sender: Any) {
        let number = Int(factorialNumber.text ?? "") ?? 0
        var result: Int = 1
        if number <= 0 {
            resultFact.text = "Number should be greater than 0"
        } else {
                for i in 1...number {
                    result *= i
                }
                resultFact.text = "\(result)"
            }
    }
    }


