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
    
    //    var TagModel:findByTagId = findByTagId()
    var TagModel:AnyObject  = findByTagId.self
    
    typealias buttonClick = (_ Model:findByTagId?,_ Str:NSString)->(Void)
    
    var buttonModel : buttonClick?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.separatorInset = UIEdgeInsets.zero;
        self.IconImageView.layer.borderWidth = 0.5
        self.IconImageView.layer.borderColor = RGB226226226.cgColor
        
        self.titmeLabel.text = "营业时间:08:00-23:00"
        self.AddressLabel.text = "这些值还要往上一个控制器传这些值还要往上一个控制器传这些值还要往上一个"
        self.Title.text = "这些值还要往上一个控制器传"
        self.PhoneNumLabel.text = "联系电话：15122221415"
        self.YouHuiButton.addTarget(self, action:#selector(newPostingBtn), for: .touchUpInside)
        self.zaixianxuangou.addTarget(self, action:#selector(newPostingBtn), for: .touchUpInside)
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
        
        self.TagModel = model
        self.AddressLabel.text = " 地址:\(model.attr!) "
        self.Title.text = model.storeName
        self.PhoneNumLabel.text = "联系电话:\(model.tel!)"
        
        
        let url:String = model.storeLogo.replacingOccurrences(of: "fs:", with: "http://m.adjo2o.com/pics")
        let URL = NSURL.init(string: url)
        
        self.IconImageView.sd_setImage(with: URL as URL!)
        
        
    }
    
    func newPostingBtn(button:UIButton) -> Void {
        
        
        if buttonModel != nil  {
            buttonModel!(self.TagModel as? findByTagId,button.currentTitle! as NSString)
        }
           
    }
    
    @IBAction func CallPhone(_ sender: Any) {
        
        let Phone:String = "telprompt:"+self.TagModel.tel
        
        print(Phone)
        UIApplication.shared.openURL(NSURL.init(string: Phone) as! URL)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
