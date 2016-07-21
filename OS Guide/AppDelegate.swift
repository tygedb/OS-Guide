//
//  AppDelegate.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import NotificationCenter

@available(iOS 10.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
              //Fabric.with([STPAPIClient.self])
      /*  _ = OneSignal(launchOptions: launchOptions, appId: "7615ff43-b476-4462-a70c-6df461dd5a44", handleNotification: nil)
            OneSignal.defaultClient().enable(inAppAlertNotification: true)*/
        UIApplication.shared().setMinimumBackgroundFetchInterval(UIApplicationBackgroundFetchIntervalMinimum)
        UIApplication.shared().registerForRemoteNotifications()
       if (UIDevice.current().userInterfaceIdiom == UIUserInterfaceIdiom.pad) {
        
        
            UIApplication.shared().statusBarOrientation = .portrait
            UIApplication.shared().statusBarOrientation = .landscapeLeft
            UIApplication.shared().statusBarOrientation = .landscapeRight
        
         
        }
        
        if (UIDevice.current().userInterfaceIdiom == UIUserInterfaceIdiom.phone) {
            
            UIApplication.shared().statusBarOrientation = .portrait

            
        }
        
    
        
        return true
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: (UNNotificationPresentationOptions) -> Void) {
        
    }
    
    func setNotificationCategories(_ categories: Set<UNNotificationCategory>) {
        
        
        
        
        
    }

    func add(_ request: UNNotificationRequest,  withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil) {
        
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Hello!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "Hello_message_body", arguments: nil)
        content.sound = UNNotificationSound.default()
        
        // Deliver the notification in five seconds.
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)
        
        // Schedule the notification.
        let center = UNUserNotificationCenter.current()
        center.add(request)

        
        
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

