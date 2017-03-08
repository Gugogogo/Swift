//
//  GuPaymentViewController.swift
//  AtHome
//
//  Created by Gu on 16/4/18.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuPaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.MyLable)

        // Do any additional setup after loading the view.
    }

    lazy var MyLable: UILabel = {
        let label = UILabel.init(frame: CGRect.init(x: 50, y: 50, width: 100, height: 100))
        label.backgroundColor = UIColor.init(red: 224/255.0, green: 45/255, blue: 46/255, alpha:1)
        label.text = "你好"
        
        return label
    }()
    
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
