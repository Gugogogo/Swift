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
    var Data = NSMutableArray()
    
    
    
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
        self.LeftImageView.layer.borderColor = UIColor.red.cgColor;
        self.LeftImageView.adjustsImageWhenHighlighted = false
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
//            button.adjustsImageWhenHighlighted = false
            
        }
        
        
        
    }
    
    
    
    func buttonclick(button:UIButton) -> Void {
        
        
    }
    
    func imageData(array:NSMutableArray) -> Void {
    
        self.LeftImageView .sd_setBackgroundImage(with: NSURL.init(string: replaceUrl(url: (array[0] as! List).atturl)) as URL!, for: .normal)
        
        self.rightTop .sd_setBackgroundImage(with: NSURL.init(string: replaceUrl(url: (array[1] as! List).atturl)) as URL!, for: .normal)
        self.rightBottom .sd_setBackgroundImage(with: NSURL.init(string: replaceUrl(url: (array[2] as! List).atturl)) as URL!, for: .normal)
//        self.rightTop .sd_setBackgroundImage(with: NSURL.init(string: array[1] as! String) as URL!, for: .normal)
//        
//        self.rightBottom .sd_setBackgroundImage(with: NSURL.init(string: array[2] as! String) as URL!, for: .normal)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
//        CALayer *layer = [CALayer layer];
//        layer.frame = CGRectMake(0, 0,WIDTH(self.NumText), 0.5);
//        layer.backgroundColor = RGB144.CGColor;
//        [self.NumText.layer addSublayer:layer];
        
        let layer = CALayer()
        
        layer.frame = CGRect.init(x: 0, y: ViewW(view: self.LeftImageView)-1, width: 1, height: ViewH(view: self.LeftImageView))
        layer.backgroundColor = RGB144.cgColor
        
//        self.LeftImageView.layer.addSublayer(layer)
        
        let bottomLay = CALayer()
        
        bottomLay.frame = CGRect.init(x: ViewW(view: self.LeftImageView), y: ViewH(view: self.rightTop)-1, width: ViewH(view: self.LeftImageView), height: 1)
        
        bottomLay.backgroundColor = RGB144.cgColor
        
//        self.rightTop.layer.addSublayer(layer)
        
        
    }
    
    
}
