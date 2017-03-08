//
//  GuPreferentialTableViewCell.swift
//  AtHome
//
//  Created by Gu on 16/9/3.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuPreferentialTableViewCell: UITableViewCell {

    @IBOutlet weak var IconImageView: UIImageView!
    @IBOutlet weak var Title: UILabel!
    

    @IBOutlet weak var titmeLabel: UILabel!
    
    @IBOutlet weak var PhoneNumLabel: UILabel!
    
    
    @IBOutlet weak var AddressLabel: UILabel!
    
    
    @IBOutlet weak var YouHuiButton: UIButton!
    @IBOutlet weak var zaixianxuangou: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.separatorInset = UIEdgeInsets.zero;
        self.IconImageView.layer.borderWidth = 0.5
        self.IconImageView.layer.borderColor = RGB226226226.cgColor

        self.titmeLabel.text = "营业时间:08:00-23:00"
        self.AddressLabel.text = "这些值还要往上一个控制器传这些值还要往上一个控制器传这些值还要往上一个"
        self.Title.text = "这些值还要往上一个控制器传"
        self.PhoneNumLabel.text = "联系电话：15122221415"
        // Initialization code
    }

    func  cellWithTableView(tableView:UITableView) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "GuPreferentialTableViewCell")
        if (nil == cell) {
            cell = GuPreferentialTableViewCell.init(style: .default, reuseIdentifier: "GuPreferentialTableViewCell")
            self.separatorInset = UIEdgeInsets.zero;

        }
        return cell!
        
    }
    
    func findByTag(model:findByTagId!)  {
        
        
//        self.AddressLabel.text = String
        self.AddressLabel.text = " 地址:\(model.attr!) "
//        self.Title.attributedText = attributedText

        
        self.Title.text = model.storeName
        self.PhoneNumLabel.text = model.tel
        
        
        let url:String = model.storeLogo.replacingOccurrences(of: "fs:", with: "http://m.adjo2o.com/pics")
        let URL = NSURL.init(string: url)
        
        self.IconImageView.sd_setImage(with: URL as URL!)
        
//        self.IconImageView.sd_setImage(with: [NSURL.init(string: url)])
        
    }
    

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
