//
//  ViewController.swift
//  PageControl_mission
//
//  Created by 유경민 on 2021/09/12.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var pagecontrol: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pagecontrol.numberOfPages = 10
        pagecontrol.currentPage = 0
        pagecontrol.pageIndicatorTintColor = UIColor.gray
        pagecontrol.currentPageIndicatorTintColor = UIColor.blue
        lab.text = String(pagecontrol.currentPage)
    }

    @IBAction func chage_page(_ sender: UIPageControl) {
        lab.text = String(pagecontrol.currentPage)
    }
    
}

