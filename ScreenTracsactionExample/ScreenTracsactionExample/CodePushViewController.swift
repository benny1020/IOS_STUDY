//
//  CodePushViewController.swift
//  ScreenTracsactionExample
//
//  Created by 유경민 on 2021/09/23.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
