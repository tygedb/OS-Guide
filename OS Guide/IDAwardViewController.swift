//
//  IDAwardViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/18/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
@available (iOS 9.0, *)
class IDAwardViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var InfoView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Congratz!"
        label1.text = " You can use Touch ID in the App Store."
        label2.text = " Use Touch ID in many Apps."
        label3.text = " You can also use Touch ID to purchase items in store or In-App using Pay"
        self.InfoView.layer.backgroundColor = UIColor.white.cgColor
        self.InfoView.layer.cornerRadius = 20
        self.InfoView.layer.frame = self.InfoView.layer.frame.insetBy(dx: 20, dy: 20)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
