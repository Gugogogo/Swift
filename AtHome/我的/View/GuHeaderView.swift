//
//  GuHeaderView.swift
//  AtHome
//
//  Created by Gu on 16/6/9.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import SnapKit

class GuHeaderView: UIView {
  
    /**头像*/
    let IconImageView = UIButton()
    // IconImageView: UIButton
    /**姓名*/
    let PhoneLabel = UILabel ()
    /** 等级*/
    let GradeLabel =  UILabel ()
    /** 用户中心*/
    let NameLabel = UILabel()
    /**  登陆*/
    let LoginButton = UIButton()
    /** 注册*/
    let RegButton =  UIButton.init(type: UIButtonType.custom)
    /**  设置*/
    let setting =  UIButton ()
    /** 修改个人资料*/
    let rightBtn = UIButton ()
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.initUI()
        self.Attribute()

        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //
    func initUI()  {
        let imageView = UIImageView()
        addSubview(imageView)
        addSubview(self.IconImageView)
        addSubview(self.PhoneLabel)
        addSubview(self.GradeLabel)
        addSubview(self.NameLabel)
        addSubview(self.LoginButton)
        addSubview(self.RegButton)
        addSubview(self.setting)
        addSubview(self.rightBtn)
        
        
        
        let view = UIView()
        self.addSubview(view)
        
        
        
        
            view.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.width.equalTo(1)
        }

        

        imageView.image = UIImage(named:"矩形-18")
        imageView.snp.makeConstraints { (make) in
            make.left.top.equalTo(0)
            make.width.equalTo(self.snp.width)
            make.height.equalTo(self.snp.height)
        }

        
        self.NameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(34)
            make.centerX.equalTo(self.snp.centerX)
            make.height.equalTo(17)
            make.width.equalTo(80)
        }
        

        self.LoginButton.snp.makeConstraints { (make) in
            make.right.equalTo(view.snp.left).offset(-10)
            make.centerY.equalTo(self.snp.centerY)
        }

        self.RegButton.snp.makeConstraints { (make) in
            make.left.equalTo(view.snp.right).offset(10)
            make.centerY.equalTo(self.snp.centerY)
            
        }
        
        self.setting.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.NameLabel.snp.centerY)
            make.right.equalTo(-15)
        }
        
    }
    func Attribute()  {
        
        self.NameLabel.textColor = RGB255
        self.NameLabel.text = "用户中心"
        self.NameLabel.textAlignment = NSTextAlignment.right
        
        
        self.LoginButton.setTitleColor(RGB255, for: .normal)
        self.LoginButton.setTitle("登陆", for: .normal)
        self.LoginButton.titleLabel?.textAlignment = NSTextAlignment.center
        self.LoginButton .setBackgroundImage(UIImage.init(named: "登录框"), for: .normal)
        
        self.RegButton.setTitleColor(RGB255, for: .normal)
        self.RegButton.setTitle("注册", for: .normal)
        self.RegButton .setBackgroundImage(UIImage.init(named: "登录框"), for: .normal)
        
        self.setting.setImage(UIImage(named: "设置"), for: .normal)
        self.setting.setImage(UIImage(named: "设置icon"), for: .selected)
        
        
//        self.LoginButton.imageEdgeInsets = UIEdgeInsetsMake(0,0, 0, -(self.LoginButton.titleLabel?.frame.size.width)!);
//        self.LoginButton.titleEdgeInsets = UIEdgeInsetsMake(0, (self.LoginButton.imageView?.frame.size.width)!, 0,0);
////
//        
//        self.RegButton.imageEdgeInsets = UIEdgeInsetsMake(0,0, 0, -(self.RegButton.titleLabel?.frame.size.width)!);
//        self.RegButton.titleEdgeInsets = UIEdgeInsetsMake(0, (self.RegButton.imageView?.frame.size.width)!, 0, -(self.RegButton.imageView?.frame.size.width)!);
        

        
        
    }
    
}
