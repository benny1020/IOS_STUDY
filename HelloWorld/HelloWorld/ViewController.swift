//
//  ViewController.swift
//  HelloWorld
//
//  Created by 유경민 on 2021/09/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var sw: UILabel!
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func send(_ sender: Any) {
        sw.text = "hello" + tf.text!
    }
    
}

