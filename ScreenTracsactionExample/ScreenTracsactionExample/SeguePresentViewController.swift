//
//  SeguePresentViewController.swift
//  ScreenTracsactionExample
//
//  Created by 유경민 on 2021/09/23.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
