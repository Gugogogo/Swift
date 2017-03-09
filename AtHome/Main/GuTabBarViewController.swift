//
//  GuTabBarViewController.swift
//  AtHome
//
//  Created by Gu on 16/4/18.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /**
         #import "GuMyViewController.h"
         #import "GuAreaViewController.h"
         #import "GuHomeViewController.h"
         #import "GuPaymentViewController.h"
         */
        self.view.backgroundColor = UIColor.white
        self.tabBarController?.tabBar.backgroundColor = UIColor.red
        UITabBar.appearance().tintColor = UIColor.red
        setUpChildViewController ()
        
        // Do any additional setup after loading the view.
    }
    
    func setUpChildViewController(vc:UIViewController,title:NSString,image:NSString,selectedImage:NSString)
    {
        vc.tabBarItem.title = title as String
        vc.tabBarItem.image = UIImage.init(named: image as String)
        vc.tabBarItem.selectedImage = UIImage.init(named: selectedImage as String)
        self.addChildViewController(vc)
        let Nav = GuNavigationViewController (rootViewController: vc)
        self.addChildViewController(Nav)
    }
    func setUpChildViewController()
    {
        let HomeViewController = GuHomeViewController()
        self.setUpChildViewController(vc: HomeViewController, title: "首页", image: "首页未选中icon.png", selectedImage: "首页选中icon.png")
        let AreaViewController = GuAreaViewController()
        self.setUpChildViewController(vc: AreaViewController, title: "北京专区", image: "北京专区未选中icon.png", selectedImage:"北京专区选中icon.png")
        let PayMentViewController = GuPaymentViewController()
        self.setUpChildViewController(vc: PayMentViewController, title: "缴费", image: "缴费未选中icon.png", selectedImage: "缴费选中icon.png")
        let MyViewController = GuMyViewController()
        self.setUpChildViewController(vc: MyViewController, title: "我的", image:"我的未选中icon", selectedImage: "我的选中icon")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
