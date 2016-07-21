//
//  PayAwardViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/19/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import QuartzCore
import SafariServices
//DONE
@available(iOS 9.0, *)
class PayAwardViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var Congratz: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Congratz.layer.masksToBounds = true
        Congratz.layer.cornerRadius = 8.0
        Congratz.text = "Congratz!"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Done(_ sender: AnyObject) {

       let done = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! UINavigationController
            present(done, animated: true, completion: nil)
        
    }
    @IBAction func Banks(_ sender: AnyObject) {
        
        let svc = SFSafariViewController (url: NSURL (string: "https://support.apple.com/en-us/HT204916")! as URL)
        svc.delegate = self
        self.present(svc, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func More(_ sender: AnyObject) {
        
        let  SFViewController = SFSafariViewController (url:NSURL(string: "http://www.apple.com/apple-pay/where-to-use-apple-pay/")! as URL)
        SFViewController.delegate = self
        self.present(SFViewController, animated: true , completion: nil)
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController ) {
       
        let dismiss = self.storyboard!.instantiateViewController(withIdentifier: "PayAward") as! UINavigationController
        present(dismiss, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
