//
//  AirPlay.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/18/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import AVFoundation

class AirPlay: UIViewController  {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    
    let tutorial = AVPlayer()


    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "AirPlay"
        titleLabel.textColor = UIColor.red
        tutorial.allowsExternalPlayback = true
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 9
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).cgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Done(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
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
