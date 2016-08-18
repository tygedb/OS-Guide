//
//  IDLoginViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/22/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import LocalAuthentication

class IDLoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.text = "Touch ID Tutorial"
        loginLabel.textColor = UIColor.black
        loginButton.tintColor = UIColor.black
       loginButton.setTitle("Login", for: UIControlState.application)
        loginButton.setTitleColor(UIColor.black, for: UIControlState.application)
        self.authenticateUser()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Done(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func Login(_ sender: AnyObject) {
        
        let login = self.storyboard!.instantiateViewController(withIdentifier: "Award") as! UINavigationController
        present(login, animated: true, completion: nil)
        
        
    }
    
    func authenticateUser()
    {
        let context = LAContext()
        var error: NSError?
        let reasonString = "Authentication is needed to further this tutorial! :)"
        
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error)
        {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString, reply: { (success, policyError) -> Void in
                
                if success
                {
                    let award = self.storyboard!.instantiateViewController(withIdentifier: "Award") as! UINavigationController
                    self.present(award, animated: true, completion: nil)
                    print("Authentication successful! :) ")
                }
                else
                {
                    switch policyError!._code
                    {
                    case LAError.systemCancel.rawValue:
                        print("Authentication was cancelled by the system.")
                    case LAError.userCancel.rawValue:
                        print("Authentication was cancelled by the user.")
                        
                    case LAError.userFallback.rawValue:
                        print("User selected to enter password.")
                        OperationQueue.main.addOperation({ () -> Void in
                            self.showPasswordAlert()
                        })
                    default:
                        print("Authentication failed! :(")
                        OperationQueue.main.addOperation({ () -> Void in
                            self.showPasswordAlert()
                        })
                    }
                }
                
            })
        }
        else
        {
            print(error?.localizedDescription)
            OperationQueue.main.addOperation({ () -> Void in
                self.showPasswordAlert()
            })
        }
    }
    
    func showPasswordAlert()
    {
        let alertController = UIAlertController(title: "Touch ID Password", message: "Please enter your password.", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .cancel) { (action) -> Void in
            
            if let textField = alertController.textFields?.first as UITextField?
            {
                if textField.text == "OS Guide"
                {
                    print("Authentication successful! :) ")
                }
                else
                {
                    self.showPasswordAlert()
                }
            }
        }
        alertController.addAction(defaultAction)
        
       /* alertController.addTextField configurationHandler: { (textField) -> Void in
            
            textField.placeholder = "Password"
            textField.secureTextEntry = true
            
        }*/
        self.present(alertController, animated: true, completion: nil)
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


