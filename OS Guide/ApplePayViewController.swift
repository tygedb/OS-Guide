//
//  ApplePayViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import PassKit
@available(iOS 9.0, *)
@available(iOS 9.2, *)
@available(iOS 8.0, *)
@IBDesignable
class ApplePayViewController: UIViewController {
    @IBOutlet weak var ApplePay: UIButton!
    @IBOutlet weak var NonPay: UIButton!
    @IBOutlet weak var Title1: UILabel!
    @IBOutlet weak var Smily: UIView!
    
    let SupportedPaymentNetworks = [PKPaymentNetwork.visa, PKPaymentNetwork.masterCard, PKPaymentNetwork.amex, PKPaymentNetwork.discover, PKPaymentNetwork.privateLabel, PKPaymentNetwork.chinaUnionPay]
    let ApplePayMerchantID = "merchant.com.osguide.Tutorial"
    var timer = Timer()
    
    @IBOutlet weak var Free: UILabel!
    @IBOutlet weak var Arrow: UIView!
    
    
    func configureView() {
        
        if (!self.isViewLoaded) {
            return
        }
        
        self.title = "Test"
        self.Free.text = "$" + "2.00"
        self.Title1.text = "Hello world"
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
          Free.text = "$ 00.00"
        Free.textColor = UIColor.black
        Title1.text = "Smiley Face!"
        NonPay.setTitle("Pay", for: UIControlState())
        NonPay.setTitleColor(UIColor.white, for: UIControlState())
        NonPay.layer.cornerRadius = 5
        ApplePay.layer.cornerRadius = 20
        self.timer = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(ApplePayViewController.toggleLabelAlpha), userInfo: nil, repeats: true)
        ApplePay.isHidden = !PKPaymentAuthorizationViewController.canMakePayments(usingNetworks: SupportedPaymentNetworks)
       
        if ApplePay.isHidden == true {
            let alertView = UIAlertController(title: "Sorry:", message: "Your iPhone doesnt support Apple Pay.", preferredStyle: .alert)
           
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                UIAlertAction in
                NSLog("OK Pressed")
                let okAction1 = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! UINavigationController
                self.present(okAction1, animated: true, completion: nil)
            }
            
             alertView.addAction(okAction)
            self.present(alertView, animated: true, completion: nil)
            Arrow.isHidden = true
            timer.invalidate()
           Free.isHidden = true
            Title1.isHidden = true
            NonPay.isHidden = true
            Smily.isHidden = true
            

                  
        } else {
            let alertView = UIAlertController(title: "Notice:", message: "Your Debit Card wont be charged.", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alertView, animated: true, completion: nil)

            Arrow.isHidden = false
        
            
        }
        
        if Arrow.isHidden == true {
            
            let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.dark)
            let blurView = UIVisualEffectView(effect: darkBlur)
            blurView.frame = Free.bounds
            blurView.frame = Title1.bounds
            blurView.frame = Smily.bounds
            Smily.addSubview(blurView)
            Free.addSubview(blurView)
            Title1.addSubview(blurView)
            
            
        } else {
            
            
            
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    func Done(sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleLabelAlpha() {
        
        self.Arrow.isHidden = (!self.Arrow.isHidden)
        
        
    }
    
    @IBAction func Cancel(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
 
        
    }
    @IBAction func Pay(_ sender: AnyObject) {
        
        timer.invalidate()
        Arrow.isHidden = true
        
        
        let request = PKPaymentRequest()
        
        request.merchantIdentifier = ApplePayMerchantID
        request.supportedNetworks = SupportedPaymentNetworks
        request.merchantCapabilities = PKMerchantCapability.capability3DS
        request.requiredShippingAddressFields = PKAddressField.all
        request.countryCode = "US"
        request.currencyCode = "USD"
        request.paymentSummaryItems = [
            PKPaymentSummaryItem(label: "Smiley Face", amount: NSDecimalNumber(value: 0.00)),
            PKPaymentSummaryItem(label: "OS Guide", amount: NSDecimalNumber(value: 0.01))
        ]
     
        let applePayController = PKPaymentAuthorizationViewController(paymentRequest: request)
        self.present(applePayController, animated: true, completion: nil)
        applePayController.delegate = self
 
    }
    

}

@available(iOS 9.2, *)
@available(iOS 8.0, *)

extension ApplePayViewController: PKPaymentAuthorizationViewControllerDelegate {
   
    func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: ((PKPaymentAuthorizationStatus) -> Void)) {
        
        completion(PKPaymentAuthorizationStatus.success)

    }

    
    func paymentAuthorizationViewControllerWillAuthorizePayment(_ controller: PKPaymentAuthorizationViewController) {
        let award = self.storyboard!.instantiateViewController(withIdentifier: "PayAward") as! UINavigationController
        present(award, animated: true, completion: nil)

    }
    
    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        controller.dismiss(animated: true, completion: nil)
        let award = self.storyboard!.instantiateViewController(withIdentifier: "PayAward") as! UINavigationController
        present(award, animated: true, completion: nil)

       
    }
//
}

