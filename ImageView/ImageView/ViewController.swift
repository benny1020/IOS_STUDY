//
//  ViewController.swift
//  ImageView
//
//  Created by 유경민 on 2021/09/09.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet weak var imv: UIImageView!
    @IBOutlet weak var zoom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.jpeg")
        imgOff = UIImage(named: "lamp_off.png")
        
        imv.image = imgOn
    }

    @IBAction func zoom(_ sender: Any) {
        let scale: CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom)
        {
            newWidth = imv.frame.width/scale
            newHeight = imv.frame.height/scale
            zoom.setTitle("확대", for: .normal)
        }
        else
        {
            newWidth = imv.frame.width*scale
            newHeight = imv.frame.width*scale
            zoom.setTitle("축소", for: .normal)
        }
        imv.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func sw(_ sender: UISwitch) {
        if (sender.isOn)
        {
            imv.image = imgOn
        }
        else
        {
            imv.image = imgOff
        }
    }
}

