//
//  ViewController.swift
//  HelloWorld
//
//  Created by kxx: on 2022/09/05.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func updateLabel(_ sender: Any) {
        label.text = "Hello, IOS"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

