//
//  ViewController.swift
//  introToUIKit
//
//  Created by SDC-USER on 01/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var parentView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let child = UIImageView(frame:CGRect(x: -100, y: 20, width: 230, height: 2350))
        child.backgroundColor = .red
        parentView.addSubview(child)
    }

    @IBAction func toggleButton(_ sender: UIButton) {
        parentView.clipsToBounds.toggle()
        sender.setTitle(parentView.clipsToBounds ? "Unclip" : "Clip", for: .normal)
        
    }
    
}

