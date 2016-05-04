//
//  AppDelegate.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/27.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        
        
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let vc = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("EJTabBarController")
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
    
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
     
    }

    func applicationDidEnterBackground(application: UIApplication) {
 
    }

    func applicationWillEnterForeground(application: UIApplication) {
     
    }

    func applicationDidBecomeActive(application: UIApplication) {
      
    }

    func applicationWillTerminate(application: UIApplication) {

    }


}

