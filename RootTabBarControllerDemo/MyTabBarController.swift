//
//  MyTabBarController.swift
//  RootTabBarControllerDemo
//
//  Created by 康志斌 on 2020/4/18.
//  Copyright © 2020 AppChihPin. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setViewControllers()
        setTabBarItems()
    }
    
    func setup() {
        tabBar.tintColor = .cyan
        tabBar.unselectedItemTintColor = .yellow
        tabBar.barTintColor = .black
    }
    
    func setViewControllers() {
        
        let homeVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let shopVC = ShoppingViewController(nibName: "ShoppingViewController", bundle: nil)
        let memberVC = MemberViewController(nibName: "MemberViewController", bundle: nil)
        
        // homeVC + NavigationController
        let homeVCWithNC = UINavigationController(rootViewController: homeVC)
        
        viewControllers = [homeVCWithNC, shopVC, memberVC]
    }
    
    func setTabBarItems() {
        let titles = ["Home", "Shop", "User"]
        let iconNames = ["home", "cart", "profile"]
//        let iconSelectedNames = []
        DispatchQueue.main.async {
            for (index, title) in titles.enumerated() {
                let item = self.tabBar.items?[index]
                item?.image = UIImage(named: iconNames[index])
//                item?.selectedImage = UIImage(named: "")
                item?.title = title
                item?.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 0)
                item?.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                item?.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12)], for: .normal)
            }
        }
    }

}
