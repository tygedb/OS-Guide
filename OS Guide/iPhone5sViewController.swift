//
//  iPhone5sViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class iPhone5sViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UIView!
    
    var SentData5s: String!
    var SentData5s2: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = SentData5s
        self.textView.layer.backgroundColor = UIColor.white.cgColor
        self.textView.layer.cornerRadius = 20
        self.textView.layer.frame = self.textView.layer.frame.insetBy(dx: 20, dy: 20)
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
        
        
        if titleLabel.text == "Intro" {
            
            
            
            
        }
        
        
        if titleLabel.text == "Touch ID" {
            
            
            
            
        }
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
