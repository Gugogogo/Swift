//
//  GuMyViewController.swift
//  AtHome
//
//  Created by Gu on 16/4/18.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuMyViewController: UIViewController {
   
   
    var NameLabel = UILabel()
    
    
    
    
   


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
    
        let HeaderView:GuHeaderView = GuHeaderView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 217))
        
        view.addSubview(HeaderView)
        
        
        
     
    
        
        
        
        

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
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
