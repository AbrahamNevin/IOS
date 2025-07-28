//
//  ViewController.swift
//  Emotions
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emotionOP: UILabel!
    @IBOutlet var emotion: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sad(_ sender: Any) {
        emotionOP.text = "☹️"
    }
    @IBAction func happy(_ sender: Any) {
        emotionOP.text = "☺️"
    }
    @IBAction func angry(_ sender: Any) {
        emotionOP.text = "😠"
    }
}

