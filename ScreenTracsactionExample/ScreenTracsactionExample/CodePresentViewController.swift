//
//  CodePresentViewController.swift
//  ScreenTracsactionExample
//
//  Created by 유경민 on 2021/09/23.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
   
    @IBOutlet weak var namelabel: UILabel!
    
    var name: String?
    weak var delegate: SendDataDelegate? // delegate 사용할 때 weak 꼭 사용 스트롱사용시 메모리 누수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.namelabel.text = name
            self.namelabel.sizeToFit()
        }

    }
    
    @IBAction func back(_ sender: UIButton) {
        self.delegate?.sendData(name: "gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
