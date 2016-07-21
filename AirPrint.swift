//
//  AirPrint.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/18/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class AirPrint: UIViewController {
    
    @IBOutlet weak var AirPrint: UIButton!
    @IBOutlet weak var airPrintLabel: UILabel!
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        airPrintLabel.text = "AirPrint"
        airPrintLabel.textColor = UIColor.red()
        textView.insertText("AirPrint was developed by Apple in 2010, Apple's introduction of iOS 4.2 gave iOS Devices the ability to print. At launch there were 12 compatible, all of them were manufactured by HP. Now there are apps that you can download from the App Store to print to a non-enabled printer.")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Print(_ sender: AnyObject) {
        
        let printController = UIPrintInteractionController.shared()
        let printInfo = UIPrintInfo(dictionary: nil)
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.jobName = "AirPrint Tutorial"
        printController.printInfo = printInfo
        let formatter = UIMarkupTextPrintFormatter(markupText: textView.text)
        formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
        printController.printFormatter = formatter
        
        printController.present(animated: true, completionHandler: nil)
        
        
        
        
    }
    @IBAction func Cancel(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }

   
}
