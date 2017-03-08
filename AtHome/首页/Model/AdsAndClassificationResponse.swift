//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON
//  轮播图 collectionView
class AdsAndClassificationResponse{

	var data : [AdsAndClassification]!
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
		data = [AdsAndClassification]()
		let dataArray = json["data"].arrayValue
		for dataJson in dataArray{
			let value = AdsAndClassification(fromJson: dataJson)
			data.append(value)
		}
		message = json["message"].stringValue
		reserve = json["reserve"].stringValue
		result = json["result"].intValue
	}

}

class AdsAndClassification{
    
    var acid : Int!
    var anumber : Int!
    var atype : Int!
    var cityCode : String!
    var cityId : Int!
    var cityName : String!
    var cname : String!
    var descriptionField : String!
    var disabled : Bool!
    var height : String!
    var list : [List]!
    var neighbourhood : String!
    var position : Int!
    var provinceId : Int!
    var quantity : Int!
    var readyCode : String!
    var regionId : Int!
    var rule : Int!
    var siteid : Int!
    var userid : Int!
    var width : String!
    
    
    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON!){
        if json == nil{
            return
        }
        acid = json["acid"].intValue
        anumber = json["anumber"].intValue
        atype = json["atype"].intValue
        cityCode = json["city_code"].stringValue
        cityId = json["city_id"].intValue
        cityName = json["city_name"].stringValue
        cname = json["cname"].stringValue
        descriptionField = json["description"].stringValue
        disabled = json["disabled"].boolValue
        height = json["height"].stringValue
        list = [List]()
        let listArray = json["list"].arrayValue
        for listJson in listArray{
            let value = List(fromJson: listJson)
            list.append(value)
        }
        neighbourhood = json["neighbourhood"].stringValue
        position = json["position"].intValue
        provinceId = json["province_id"].intValue
        quantity = json["quantity"].intValue
        readyCode = json["ready_code"].stringValue
        regionId = json["region_id"].intValue
        rule = json["rule"].intValue
        siteid = json["siteid"].intValue
        userid = json["userid"].intValue
        width = json["width"].stringValue
    }
    
}

class List{
    
    var acid : Int!
    var aid : Int!
    var aname : String!
    var attachment : AnyObject!
    var atturl : String!
    var atype : AnyObject!
    var begintime : Int!
    var clickcount : Int!
    var company : String!
    var contact : String!
    var disabled : Bool!
    var endtime : Int!
    var isclose : Int!
    var isdisplay : Int!
    var isopen : Int!
    var linkman : String!
    var position : AnyObject!
    var sort : Int!
    var updatetime : Int!
    var url : String!
    var urlParamType : String!
    
    
    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON){
        if json == nil{
            return
        }
        acid = json["acid"].intValue
        aid = json["aid"].intValue
        aname = json["aname"].stringValue
//        attachment = json["attachment"].stringValue 
        atturl = json["atturl"].stringValue
//        atype = json["atype"].stringValue
        begintime = json["begintime"].intValue
        clickcount = json["clickcount"].intValue
        company = json["company"].stringValue
        contact = json["contact"].stringValue
        disabled = json["disabled"].boolValue
        endtime = json["endtime"].intValue
        isclose = json["isclose"].intValue
        isdisplay = json["isdisplay"].intValue
        isopen = json["isopen"].intValue
        linkman = json["linkman"].stringValue
//        position = json["position"].stringValue
        sort = json["sort"].intValue
        updatetime = json["updatetime"].intValue
        url = json["url"].stringValue
        urlParamType = json["url_param_type"].stringValue
    }
    
}

