//
//  ViewController.swift
//  ageCalculator
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var currentYear: UITextField!
    @IBOutlet weak var birthYear: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        let yearOfBirth = Int(birthYear.text!) ?? 0
        let currentYearValue = Int(currentYear.text!) ?? 0
        let age = currentYearValue - yearOfBirth
        result.text = "Your age is \(age)"
    }
    
}

