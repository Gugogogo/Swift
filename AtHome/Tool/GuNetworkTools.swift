//
//  GuNetworkTools.swift
//  AtHome
//
//  Created by Gu on 17/3/8.
//  Copyright © 2017年 MengTai. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
enum Methodtype {
    case get
    case post
}

class GuNetworkTools: NSObject {
    
    func getRequestData(type:Methodtype,URLString:String,finishedCallBack: @escaping (_ result: AnyObject) -> ()){
        
        let URLStr:String = basicURL+URLString
        
        Alamofire.request(URLStr, method: .get).responseJSON { (response) in
            
            // 3 获取结果
            guard response.result.value != nil else {
                print(response.result.error ?? "获取结果失败")
                return
            }
            
             let json = JSON.init(data: response.data!)
            
            // 4 将结果回调出去
            finishedCallBack(json as AnyObject)
        }
    }
    
}


