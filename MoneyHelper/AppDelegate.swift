//
//  AppDelegate.swift
//  MoneyHelper
//
//  Created by Louise Fonteneau on 10/10/2018.
//  Copyright © 2018 Louise Fonteneau. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController(nibName: "ViewController", bundle: nil)
        
        self.window?.rootViewController = viewController
        self.window?.makeKeyAndVisible()
        return true
    }
}

