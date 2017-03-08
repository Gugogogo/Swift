//
//  GuHomeCollectionViewCell.swift
//  AtHome
//
//  Created by Gu on 16/7/31.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import SDWebImage
class GuHomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var HomeIconImageView: UIImageView!
    
    @IBOutlet weak var HomeTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func homecellResult(model:List!)  {
        
        self.HomeTitleLabel.text = model.aname
        let urlStr:String = model.atturl.replacingOccurrences(of: "fs:", with: picsUrl)
        let URLSTR:NSURL = NSURL.init(string: urlStr)!
        self.HomeIconImageView.sd_setImage(with: URLSTR as URL!)

    }


}
