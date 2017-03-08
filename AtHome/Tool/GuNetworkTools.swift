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

    func getRequestData(type:Methodtype,URLString:String,parameters:[String:Any]? = nil,finishedCallBack: @escaping (_ result: AnyObject) -> ()){
        
        Alamofire.request(URLString, method: .get, parameters: parameters).responseJSON { (response) in
            
            // 3 获取结果
            guard let result = response.result.value else {
                print(response.result.error ?? "获取结果失败")
                return
            }
            
            // 4 将结果回调出去
            finishedCallBack(response.data as AnyObject)
        }
        }
        
    }
    

