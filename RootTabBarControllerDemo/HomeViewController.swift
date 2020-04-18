//
//  HomeViewController.swift
//  RootTabBarControllerDemo
//
//  Created by 康志斌 on 2020/4/18.
//  Copyright © 2020 AppChihPin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tabBarController?.tabBar.items![0].badgeValue = "home"
    }

}
