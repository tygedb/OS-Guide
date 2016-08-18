//
//  ViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import PassKit
import LocalAuthentication
import UserNotifications

@available(iOS 9.2, *)
@IBDesignable
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    @IBOutlet weak var Welcome: UILabel!
    @IBOutlet weak var deviceTitle: UILabel!
    @IBOutlet weak var Device1: UILabel!
    @IBOutlet weak var Device: UILabel!
    @IBOutlet weak var deviceView: UIView!
    @IBOutlet weak var systemLabel: UILabel!
    @IBOutlet weak var systemLabel2: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var background: UIImageView!
    
    func batteryLevel() -> Float {
        
        
        return UIDevice.current.batteryLevel
    }
    
    

    var time: NSDate?
    var isOnScreen = false
    var pickerData: [String] = [String]()
    let modelName = UIDevice.current.modelName
    let batteryState = UIDevice.current.batteryState
    let system = UIDevice.current.systemVersion
    let system2 = UIDevice.current.orientation.isPortrait
    let test = UIDevice.current.identifierForVendor
    let orientation = "Orientation: "
    let SupportedPaymentNetworks = [PKPaymentNetwork.visa, PKPaymentNetwork.masterCard, PKPaymentNetwork.amex, PKPaymentNetwork.discover, PKPaymentNetwork.privateLabel, PKPaymentNetwork.chinaUnionPay]
    var context: LAContext = LAContext()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
        background.image = UIImage(named: "Background.png")
        deviceTitle.text = "Device Details:"
        
        UIDevice.current.isBatteryMonitoringEnabled = true
        PickerView.delegate = self
        PickerView.dataSource = self
        self.deviceView.layer.backgroundColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1).cgColor
        self.deviceView.layer.cornerRadius = 10
        self.deviceView.layer.frame = self.deviceView.layer.frame.insetBy(dx: 20, dy: 20)
        Welcome.text = "OS Guide"
        Welcome.textColor = UIColor.black
        var array = ["Tutorials:", "AirPlay", "AirPrint", "AirDrop"]
        
        if (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone) {
            
            Device.text = "Model: \(modelName)"
            Device1.text = "Battery: \(batteryLevel() * 100)%"
            systemLabel.text = "Version: iOS \(system)"
            UIApplication.shared.statusBarOrientation = .portrait
            
        } else if (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad) {
            
            Device.text = "Model: \(modelName)"
            Device1.text = "Battery: \(batteryLevel() * 100)%"
            systemLabel.text = "Version: iOS \(system)"
            systemLabel2.text = "Orientation: \(system2)"
            UIApplication.shared.statusBarOrientation = .portrait
            UIApplication.shared.statusBarOrientation = .landscapeLeft
            UIApplication.shared.statusBarOrientation = .landscapeRight

        }
        
        if UIDevice.current.orientation.isPortrait {
            
            systemLabel2.text = orientation + "Portrait"
            
            
        } else {
            
            
            systemLabel2.text = orientation + "Landscape"
            
        }
        
        if UIDevice.current.orientation.isFlat {
            
            
            systemLabel2.text = orientation + "Flat"
            
            
        }
        
        if (UIDevice.current.batteryState == UIDeviceBatteryState.full) {
            
            Device.text = "100%"
            
            
        }
        
        if PKPaymentAuthorizationViewController.canMakePayments() {
            
            array.insert("Pay", at: 1)
            
            
        }


        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil) {
            array.append("Touch ID")
        }
        
        if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
            // 3D Touch capable
        
            array.append("3D Touch")
            
        }
        
        
        if (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone) {
            
            array.append("Devices:")
            array.append("iPhone 5")
            array.append("iPhone 5c")
            array.append("iPhone 5s")
            array.append("iPhone SE")
            array.append("iPhone 6")
            array.append("iPhone 6 Plus")
            array.append("iPhone 6s")
            array.append("iPhone 6s Plus")
            array.append("iPhone 7")
            array.append("iPhone 7 Plus")
            array.append("Apple Watch")
            array.append("iPod 5G")
            array.append("iPod 6G")
            
        } else if (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad) {
            
            array.append("Devices:")
            array.append("iPad 2")
            array.append("iPad 3")
            array.append("iPad 4")
            array.append("iPad Air")
            array.append("iPad Air 2")
            array.append("iPad Pro 9.7")
            array.append("iPad Pro 12.9")
            array.append("iPad Mini")
            array.append("iPad Mini 2")
            array.append("iPad Mini 3")
            array.append("iPad Mini 4")

        }
        
        pickerData = array
        
    }
    
   
    
    func fetch(completion: () -> Void) {
        time = NSDate()
        completion()
    }
    
    func updateUI() {
        if let time = time {
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .long
            Device1?.text = formatter.string(from: time as Date)
        }
        else {
            Device1?.text = "Not yet updated"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let select: Int = Int(row)
       
        
        if pickerData[select] == "Pay" {
            
            let applepay = self.storyboard!.instantiateViewController(withIdentifier: "ApplePay") as! UINavigationController
                present(applepay, animated: true, completion: nil)
            
            
        }
        
        
        if pickerData[select] == "AirPlay" {
            
            let airplay = self.storyboard!.instantiateViewController(withIdentifier: "AirPlay") as! UINavigationController
            present(airplay, animated: true, completion: nil)
            
        }

        if pickerData[select] == "AirPrint" {
            
            let airprint = self.storyboard!.instantiateViewController(withIdentifier: "AirPrint") as! UINavigationController
            present(airprint, animated: true, completion: nil)
            
        }
        
        if pickerData[select] == "Touch ID" {
            
            let touchID = self.storyboard!.instantiateViewController(withIdentifier: "TouchID") as! UINavigationController
            present(touchID, animated: true, completion: nil)

        }
        
        if pickerData[select] == "3D Touch" {
            
            let Touch = self.storyboard!.instantiateViewController(withIdentifier: "3DTouch") as! UINavigationController
            present(Touch, animated: true, completion: nil)
            
            
        }
        
        if pickerData[select] == "iPhone 5" {
            
            let iphone5 = self.storyboard!.instantiateViewController(withIdentifier: "iPhone5") as! UINavigationController
            present(iphone5, animated: true, completion: nil)
            
        }
        
        if pickerData[select] == "iPhone 5s" {
            
            let iphone5s = self.storyboard!.instantiateViewController(withIdentifier: "iPhone5s") as! UINavigationController
            present(iphone5s, animated: true, completion: nil)
            
        }
        
        
        
        
    }
    
    @IBAction func Settings(_ sender: AnyObject) {
        
        let settings = self.storyboard!.instantiateViewController(withIdentifier: "Settings") as! UINavigationController
        present(settings, animated: true, completion: nil)
        
        
    }

}

public extension UIDevice {
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone8,4":                               return "iPhone SE"
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
