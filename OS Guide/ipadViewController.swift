//
//  ipadViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class ipadViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var ipadPickerView: UIPickerView!
    @IBOutlet weak var ipadDevice: UILabel!
    @IBOutlet weak var ipadWelcome: UILabel!

    let ipadmodelName = UIDevice.current().ipadmodelName
    var ipadpickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ipadPickerView.dataSource = self
        ipadPickerView.delegate = self
        ipadWelcome.text = "OS Guide"
        ipadWelcome.textColor = UIColor.black()
        ipadpickerData = ["Tutorials:", "Pay", "AirPlay", "AirPrint", "Touch ID","AirDrop", "Choose your Device:", "iPad 2", "iPad Air 2"]

        if (UIDevice.current().userInterfaceIdiom == UIUserInterfaceIdiom.pad) {
            
            ipadDevice.text = "You have an \(ipadmodelName)"
            
        }

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ipadpickerData.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ipadpickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let select: Int = Int(row)
        
        
        if select == 1 {
            
            let applepay = self.storyboard!.instantiateViewController(withIdentifier: "Apple Pay") as! UINavigationController
            present(applepay, animated: true, completion: nil)
            
            
        }
        
        
        if select == 2 {
            
            let airplay = self.storyboard!.instantiateViewController(withIdentifier: "AirPlay") as! UINavigationController
            present(airplay, animated: true, completion: nil)
            
        }
        
        if select == 3 {
            
            let airprint = self.storyboard!.instantiateViewController(withIdentifier: "AirPrint") as! UINavigationController
            present(airprint, animated: true, completion: nil)
            
        }
        
        if select == 4 {
            
            let touchID = self.storyboard!.instantiateViewController(withIdentifier: "TouchID") as! UINavigationController
            present(touchID, animated: true, completion: nil)
            
        }
        
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

public extension UIDevice {
    
    var ipadmodelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {

        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8":return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    
}

