//
//  EditViewController.swift
//  Navigation
//
//  Created by 유경민 on 2021/09/13.
//

import UIKit


class EditViewController: UIViewController{
    
    
    
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate : EditDelegate?
    var isOn = false
    
    
    @IBOutlet var swisOn: UISwitch!
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWay.text = textWayValue
        txMessage.text = textMessage
        swIsOn.isOn = isOn
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
