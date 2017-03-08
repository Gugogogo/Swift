//
//  GuPreferetionHeardView.swift
//  AtHome
//
//  Created by Gu on 16/11/2.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import SnapKit



class GuPreferetionHeardView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    let titleLabel = UILabel()
    let iconImageView = UIImageView()
    let backPercent = UILabel()
    let privilege_amount = UILabel()
    let privilege_person_time = UILabel()
    let BackGroundImage = UIImageView()
    let BackButton = UIButton()
    let dangqian = UIImageView()
    let view = UIView()
    let view1 = UIView()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
        Attribute()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI() {
    
        self.addSubview(titleLabel);
        self.addSubview(privilege_amount);
        self.addSubview(privilege_person_time)
        self.addSubview(backPercent)
        self.addSubview(iconImageView)
        self.addSubview(BackGroundImage)
        self.addSubview(BackButton)
        self.addSubview(view)
        self.addSubview(view1)
        self.addSubview(dangqian)
        
        dangqian.image = UIImage.init(named: "当前")
        
        BackButton.snp.makeConstraints { (make) in
            make.left.equalTo(17)
            make.top.equalTo(34)
            make.size.equalTo(CGSize.init(width: 17, height: 17))
            
        }
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(BackButton.snp.centerY)
        }
        let width = ScreenWidth*(70.0/375.0)
        
        iconImageView.snp.makeConstraints { (make) in
            make.top.equalTo(BackButton.snp.bottom).offset(10)
            make.size.equalTo(CGSize.init(width: width, height: width))
            make.left.equalTo(ScreenWidth*(45.0/375.0))
        }
        
        BackGroundImage.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.width.equalTo(ScreenWidth)
            make.height.equalTo(self.frame.size.height)
        }
        
        view.snp.makeConstraints { (make) in
            make.left.equalTo(iconImageView.snp.right).offset(ScreenWidth*(58.0/375.0))
            make.centerY.equalTo(self.iconImageView.snp.centerY)
            make.size.equalTo(CGSize.init(width: 20, height: 38))
        }
        backPercent.snp.makeConstraints { (make) in
            make.left.equalTo(dangqian.snp.right).offset(10)
            make.centerY.equalTo(dangqian.snp.centerY)
        }
        privilege_amount.snp.makeConstraints { (make) in
            make.right.equalTo(-15)
            make.bottom.equalTo(-10)
        }
        
        let line = UIView()
        line.backgroundColor = UIColor.white
        self.addSubview(line)
        
        line.snp.makeConstraints { (make) in
            make.right.equalTo(privilege_amount.snp.left).offset(-8)
            make.centerY.equalTo(privilege_amount.snp.centerY)
            make.width.equalTo(1)
            make.height.equalTo(privilege_amount.snp.height)
        }
        
        privilege_person_time.snp.makeConstraints { (make) in
            make.right.equalTo(line.snp.left).offset(-8)
            make.centerY.equalTo(privilege_amount.snp.centerY)
        }
        
    }
    func Attribute()  {
        
        BackGroundImage.contentMode = .scaleToFill
        backPercent.font = UIFont.systemFont(ofSize: 43)
        backPercent.textColor = RGB255
        privilege_person_time.textColor = UIColor.white
        privilege_person_time.font = UIFont.systemFont(ofSize: 13)
        privilege_amount.textColor = UIColor.white
        privilege_amount.font = UIFont.systemFont(ofSize: 13)
        
        iconImageView.layer.masksToBounds = true
        iconImageView.layer.cornerRadius = 4.0
        
//        let arry =; @[]
        
    }
    
    
    
}
