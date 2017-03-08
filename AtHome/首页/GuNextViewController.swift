//
//  GuNextViewController.swift
//  AtHome
//
//  Created by Gu on 16/6/9.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuNextViewController: UIViewController {

    var Name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = RGB2244546
        
        self.title = Name as String
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        self.navigationController?.navigationBar.isHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
