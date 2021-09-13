//
//  ViewController.swift
//  PageControl
//
//  Created by 유경민 on 2021/09/12.
//

import UIKit
var images = ["01.jpeg","02.jpeg","03.jpeg","04.jpeg","05.jpeg","06.jpeg"]

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        
        imgView.image = UIImage(named: images[0])
        
    }


    @IBAction func pagechange(_ sender: UIPageControl) {
        imgView.image = UIImage(named:  images[pageControl.currentPage])
    }
}

