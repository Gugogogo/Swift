//
//  GuThirdView.swift
//  AtHome
//
//  Created by Gu on 17/3/9.
//  Copyright © 2017年 MengTai. All rights reserved.
//

import UIKit

class GuThirdView: UIView {
    
    var LeftImageView = UIButton()
    var rightTop = UIButton()
    var rightBottom = UIButton()
//    (AdsOrClassificationDetail*)obj
    typealias buttonS = (_ ImageData:AdsAndClassification)->Void
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.initUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initUI() -> Void {
        
        self.addSubview(LeftImageView)
        self.addSubview(rightTop)
        self.addSubview(rightBottom)
        
        
        LeftImageView.snp.makeConstraints { (make) in
            
            make.left.top.equalTo(0)
            make.height.equalTo(self.frame.size.height)
            make.width.equalTo(ScreenWidth/2)
        }
        
        rightTop.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.right.equalTo(-0)
            make.height.equalTo(self.frame.size.height/2)
            make.left.equalTo(LeftImageView.snp.right)
        }
        
        rightBottom.snp.makeConstraints { (make) in
            make.right.equalTo(-0)
            make.top.height.equalTo(self.frame.size.height/2)
            make.left.equalTo(LeftImageView.snp.right)
        }
    }
    
    func Attribute() -> Void {
        
        self.LeftImageView.layer.borderWidth = 0.25
        self.LeftImageView.layer.borderColor = RGBBackgroud.cgColor;
        self.rightTop.layer.borderColor = RGBBackgroud.cgColor;
        
        if UIScreen.main.nativeBounds.size.height>1600 {
            self.rightBottom.layer.borderWidth = 0.35;
            self.rightTop.layer.borderWidth = 0.35;
        }else{
        
            self.rightBottom.layer.borderWidth = 0.25;
            self.rightTop.layer.borderWidth = 0.25;
        }
        
        let buttonArray = [LeftImageView,rightTop,rightBottom]
        
        for button:UIButton in buttonArray {
            
            button.addTarget(self, action: #selector(buttonclick), for:.touchUpInside)
        }
        
        
        
    }
    
    func buttonclick() -> Void {
        
    }
    
}
