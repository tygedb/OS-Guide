//
//  TouchID2ViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/23/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
@IBDesignable
class TouchID2ViewController: UIViewController {

    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Passcode.png")
        titleLabel.text = "Touch ID Tutorial"
        Description.text = "Enter in your passcode to view all of the options."
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Next(_ sender: AnyObject) {
        let storyboard = self.storyboard!.instantiateViewController(withIdentifier: "TutorialLogin") as! UINavigationController
        present(storyboard, animated: true, completion: nil)
        
    }
    @IBAction func Cancel(_ sender: AnyObject) {
    let cancel = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! UINavigationController
        present(cancel, animated: true, completion: nil)
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
