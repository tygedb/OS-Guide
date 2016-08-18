//
//  TouchIDViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/22/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import LocalAuthentication
class TouchIDViewController: UIViewController {
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var OpenSettings: UIBarButtonItem!

    let url:NSURL! = NSURL(string : "prefs:root=")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Touch ID Tutorial"
        imageView.image = UIImage(named: "TouchID.png")
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 2, height: 2)
        imageView.layer.shadowRadius = 5
        imageView.layer.shadowOpacity = 0.5
        Description.text = "Step 1: Locate Touch ID & Passcode in Settings"
        subtitle.text = "(Setup)"
        self.navigationController?.navigationBar.tintColor = UIColor.red
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func OpenSettings(_ sender: AnyObject) {
        
        if (OpenSettings.isEnabled == true) {
            
            let alert = UIAlertController(title: "Warning:", message: "This link is broken :(.", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default , handler: nil)
            
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
         
        } else {
     
            UIApplication.shared.openURL(NSURL(string:"prefs:root=General")! as URL)
        }
    }
    @IBAction func Next(_ sender: AnyObject) {
        let touchID2 = self.storyboard!.instantiateViewController(withIdentifier: "TouchID2") as! UINavigationController
        present(touchID2, animated: true, completion: nil)
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


