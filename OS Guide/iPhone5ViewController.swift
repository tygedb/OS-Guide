//
//  iPhone5ViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import QuartzCore

class iPhone5ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var frame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    var SentData: String!
    var SentData2: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "iPhone55.png")
        configurePageControl()
        titleLabel.text = SentData
        imageView.image = UIImage(named: SentData2)
        self.textView.layer.backgroundColor = UIColor.white.cgColor
        self.textView.layer.cornerRadius = 20
        self.textView.layer.frame = self.textView.layer.frame.insetBy(dx: 20, dy: 20)
        self.view.backgroundColor = UIColor.red
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        for index in 0..<4 {
            
            frame.origin.x = self.scrollView.frame.size.width * CGFloat(index)
            frame.size = self.scrollView.frame.size
            self.scrollView.isPagingEnabled = true
            
            let subView = UIView(frame: frame)
            self.scrollView .addSubview(subView)
        }
        
        self.scrollView.contentSize = CGSize(width: self.scrollView.frame.size.width * 4, height: self.scrollView.frame.size.height)
        pageControl.addTarget(self, action: #selector(iPhone5ViewController.changePage(_:)), for: UIControlEvents.valueChanged)
        

        
        if titleLabel.text == "Intro" {
            titleLabel.text = "Intro"
            label1.text = "iPhone 5 was released in 2012, with the amazing iOS 6.0"
            imageView.image = UIImage(named: "iOS6.png")
            backgroundImage.image = UIImage(named: "Canvas6.png")
            print("Successful \(backgroundImage)")
            
        }
        
    
        
        // Do any additional setup after loading the view.
    }

    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        
        self.pageControl.numberOfPages = 4
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.pageControl.pageIndicatorTintColor = UIColor.black
        self.pageControl.currentPageIndicatorTintColor = UIColor.white
        self.view.addSubview(pageControl)
        
    }
    
    // MARK : TO CHANGE WHILE CLICKING ON PAGE CONTROL
    func changePage(_ sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x: x, y: 0), animated: true)
    }
    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
