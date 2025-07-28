//
//  ViewController.swift
//  Multiplication Tables
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultTable: UILabel!
    @IBOutlet weak var MultipicationNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getTable(_ sender: Any) {
        let number:Int = Int(MultipicationNumber.text!) ?? 0
        var result:String = ""
        for i in 1...10 {
            
            resultTable.text! += "\(number) * \(i) = \(number*i)\n"
//            result += String(number * i) + "\n"
        }
//        resultTable.text = result
    }
    
}

