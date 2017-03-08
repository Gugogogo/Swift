//
//  GuHomeTableViewCell.swift
//  AtHome
//
//  Created by Gu on 16/7/23.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

class GuHomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var IconImageView: UIImageView!

    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var soldLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.IconImageView.layer.borderWidth = 0.5
        self.IconImageView.layer.borderColor = RGB2244546.cgColor
    
        // Initialization code
    }
    func  cellWithTableView(tableView:UITableView) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "GuHomeTableViewCell")
        
        if (nil == cell) {
            cell = GuHomeTableViewCell.init(style: .default, reuseIdentifier: "GuHomeTableViewCell") 
        }
        return cell!
        
    }
    
    func homecellResult(model:Result!)  {
        
        self.TitleLabel.text = model.storeName
        self.detailLabel.text = model.name
        self.priceLabel.text = NSString.init(format: "%.2f", model.price) as String
        self.soldLabel.text = NSString.init(format: "已售%d", model.buyNum) as String
    }
    
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
