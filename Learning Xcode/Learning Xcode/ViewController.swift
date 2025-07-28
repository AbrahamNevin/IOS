//
//  ViewController.swift
//  Learning Xcode
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var geetLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    @IBAction func greetButton(_ sender: Any) {
        geetLable.text = "Hello "  + nameField.text! + "!"
    }
    

}

