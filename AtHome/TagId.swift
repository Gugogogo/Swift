//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON

class TagIdData {
    
    var listShow : String!
    var storeCount : Int!
    var storeOrder : Int!
    var tag : AnyObject!
    var tagId : Int!
    var tagName : String!
    var typeId : Int!
    var typeName : String!
    var typePath : String!
    
    
    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON!){
        if json == nil{
            return
        }
        listShow = json["list_show"].stringValue
        storeCount = json["store_count"].intValue
        storeOrder = json["store_order"].intValue
        tag = json["tag"].stringValue as AnyObject!
        tagId = json["tag_id"].intValue
        tagName = json["tag_name"].stringValue
        typeId = json["type_id"].intValue
        typeName = json["type_name"].stringValue
        typePath = json["type_path"].stringValue
    }

}


class TagId{

	var data : [TagIdData]!
	var message : String!
	var reserve : String!
	var result : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == nil{
			return
		}
		data = [TagIdData]()
		let dataArray = json["data"].arrayValue
		for dataJson in dataArray{
			let value = TagIdData(fromJson: dataJson)
			data.append(value)
		}
		message = json["message"].stringValue
		reserve = json["reserve"].stringValue
		result = json["result"].intValue
	}

}
