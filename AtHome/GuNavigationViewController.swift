//
//  GuNavigationViewController.swift
//  AtHome
//
//  Created by Gu on 16/4/18.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuNavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        [UINavigationBar appearance].clipsToBounds = YES;
        //    self.navigationBar.shadowImage = UIImage.init(named: "")
        //        UINavigationBar.appearance().clipsToBounds = true
        
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count != 0  {
            viewController.hidesBottomBarWhenPushed = true
            self.navigationBar.shadowImage = UIImage.init(named: "")
            self.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFont(ofSize: 15),NSForegroundColorAttributeName:UIColor.white]
            
            self.navigationController?.navigationBar.backgroundColor = RGB2244546
            
            
            let  button = UIButton()
            button.bounds = CGRect.init(x: 0, y: 0, width: 25, height: 25)
            //            button.bounds = CGRectMake(0, 0, 70, 30)
            button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            button.setImage(UIImage.init(named: "返回箭头icon"), for: .normal)
            button.setImage(UIImage.init(named: "返回箭头icon"), for: .highlighted)
            button.addTarget(self, action: #selector(GuNavigationViewController.back), for: .touchUpInside)
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
        }
        super.pushViewController(viewController, animated: animated)
    }
    func back ()
    {
        self.popViewController(animated: true)
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
