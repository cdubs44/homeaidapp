//
//  AppDelegate.swift
//  WKWebView
//
//  Created by Connor on 3/11/20.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController =  ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

