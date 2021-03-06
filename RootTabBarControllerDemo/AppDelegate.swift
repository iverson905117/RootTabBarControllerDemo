//
//  AppDelegate.swift
//  RootTabBarControllerDemo
//
//  Created by 康志斌 on 2020/4/18.
//  Copyright © 2020 AppChihPin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MyTabBarController(nibName: nil, bundle: nil)
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return true
    }

}

