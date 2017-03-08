//
//  GuBottomView.swift
//  AtHome
//
//  Created by Gu on 16/6/10.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import Foundation

class GuBottomView: UIView {
    
    
    var OverNum: UIButton
    var OverNumLabel: UILabel
    var Star: UIButton
    var ShouCang: UILabel
    var Message: UIButton
    var MessageLabel: UILabel

    override convenience init(frame: CGRect) {
        self.init(frame: frame)
        self.initUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI() {
        let oneView: UIView = UIView()
        let twoView: UIView = UIView()
        let threeView: UIView = UIView()
        let image: UIImageView = UIImageView()
        self.addSubview(image)
        self.addSubview(oneView)
        self.addSubview(twoView)
        self.addSubview(threeView)
        
        image.backgroundColor = UIColor.red
        image.image = UIImage(named: "矩形-13-拷贝")
        self.OverNum = UIButton()
        self.Star = UIButton()
        self.Message = UIButton()
        self.OverNumLabel = UILabel()
        self.ShouCang = UILabel()
        self.MessageLabel = UILabel()
        let  label: UILabel = UILabel()
        oneView.addSubview(OverNum)
        oneView.addSubview(OverNumLabel)
        oneView.addSubview(label)
        twoView.addSubview(Star)
        twoView.addSubview(ShouCang)
        threeView.addSubview(MessageLabel)
        threeView.addSubview(Message)

        self.OverNumLabel.text = "余额"
        self.OverNumLabel.font = UIFont.systemFont(ofSize: 12)
        self.OverNumLabel.textColor = RGB255
        self.OverNumLabel.textAlignment = .center
        self.ShouCang.text = "收藏"
        self.ShouCang.textColor = RGB255
        self.ShouCang.font = UIFont.systemFont(ofSize: 12)
        self.ShouCang.textAlignment = .center
        self.MessageLabel.text = "消息"
        self.MessageLabel.font = UIFont.systemFont(ofSize: 12)
        self.MessageLabel.textAlignment = .center

        self.MessageLabel.textColor = RGB255
        label.text = "元"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = RGB255
        self.OverNum.setTitle("0.00", for: .normal)
        self.OverNum.titleLabel!.font = UIFont.systemFont(ofSize: 14)
        //self.OverNum.setTitleColor(RGBACOLOR(255, 188, 26, 1), forState: .Normal)
        self.Star.setImage(UIImage(named: "收藏icon"), for: .normal)
        self.Message.setImage(UIImage(named: "消息icon"), for: .normal)

        
        
    }

}
