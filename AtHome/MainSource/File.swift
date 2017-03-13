//
//  File.swift
//  AtHome
//
//  Created by Gu on 16/6/9.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit

let RGB255 = UIColor.init(red: 255, green: 255, blue: 255, alpha: 1)
let RGB144 = UIColor.init(red: 144/255, green: 144/255, blue: 144/255, alpha: 1)
let RGB2244546 = UIColor.init(red: 224/255, green: 45/255, blue: 46/255, alpha: 1)
let RGB505050 = UIColor.init(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
let RGBBackgroud = UIColor.init(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
let RGB226226226 = UIColor.init(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)


let ScreenWidth = UIScreen.main.bounds.size.width

let ScreenHeight = UIScreen.main.bounds.size.height

let  IS_WEB_DATA =  0

var  picsUrl  =  "http://m.adjo2o.com/pics"

var  basicURL = "http://m.adjo2o.com/webproxy/api/adjo2o/"

//#define RGB255                [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0  alpha:1.0]
//#define RGB144                [UIColor colorWithRed:144/255.0 green:144/255.0 blue:144/255.0  alpha:1.0]
//#define RGB2244546            [UIColor colorWithRed:224/255.0 green:45/255.0 blue:46/255.0 alpha:1.0]
//#define RGB245245245          [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0  alpha:1.0]
//#define RGB505050             [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0        alpha:1.0]
//
//#define Font(Num)             [UIFont systemFontOfSize:Num]

func FontNum(Num:CGFloat) -> UIFont {
    
    switch ScreenWidth {
    case 320:
        
        return UIFont.systemFont(ofSize: Num-1)
    case 375:
        return UIFont.systemFont(ofSize: Num)
    default:
        return UIFont.systemFont(ofSize: Num+1)
    }
    
}


/// 获取控件高度
/// - Parameter view: 当前view
func ViewH(view:UIView) -> CGFloat {
    return view.frame.size.height
}

func ViewW(view:UIView) -> CGFloat {
    
    return view.frame.size.width
}

func ViewX(view:UIView) -> CGFloat {
    
    return view.frame.origin.x
}

func ViewY(view:UIView) -> CGFloat {
    
    return view.frame.origin.y
}


func replaceUrl(url:String) -> String {
    
    let urlStr = url.replacingOccurrences(of: "fs:", with: picsUrl)
    
    return urlStr
    
}

