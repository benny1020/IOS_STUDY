//
//  ViewController.swift
//  Datepicker
//
//  Created by 유경민 on 2021/09/09.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet weak var cur_time: UILabel!
    @IBOutlet weak var pick_time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector,
                              userInfo: nil, repeats: true)
    }

    @IBAction func date_picker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let fomatter = DateFormatter()
        
        fomatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        pick_time.text = "선택시간 : "+fomatter.string(from:  datePickerView.date)
    }
    
    @objc func updateTime(){
        //cur_time.text = String(count)
        //count = count + 1
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        cur_time.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
}

