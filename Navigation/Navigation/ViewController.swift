//
//  ViewController.swift
//  Navigation
//
//  Created by 유경민 on 2021/09/13.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class ViewController: UIViewController, EditDelegate {
    
    let imgOn = UIImage(named: "lamp_on.jpeg")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" // 버튼을 클릭한 경우
        {
            editViewController.textWayValue = "segue : use button"
        }
        else
        {
            //바 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Bar button"
        }
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
        
    }

}

