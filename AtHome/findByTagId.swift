//
//	findByTagId.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import SwiftyJSON


class findByTagId : NSObject{
    
    var affiliateType : String!
    var attachment : String!
    var attr : String!
    var backcash : Float!
    var bankAccountName : String!
    var bankAccountNumber : String!
    var bankCity : String!
    var bankCityid : Int!
    var bankCode : String!
    var bankName : String!
    var bankProvince : String!
    var bankProvinceid : Int!
    var bankRegion : String!
    var bankRegionid : Int!
    var cityCode : String!
    var commission : Int!
    var connum : String!
    var createTime : Int!
    var customImg : String!
    var customImg1 : String!
    var customImg2 : String!
    var customImg3 : String!
    var descriptionField : String!
    var disabled : Int!
    var discount : Float!
    var distributionAttribute : String!
    var endTime : Int!
    var goodsNum : Int!
    var goodsNumEnable : Int!
    var idImg : String!
    var idNumber : String!
    var isclose : Int!
    var isjoin : Int!
    var latitude : Float!
    var licenseImg : String!
    var logisticsCost : Int!
    var logisticsCostDescription : String!
    var longitude : Int!
    var memberId : Int!
    var memberName : String!
    var nameAuth : Int!
    var praiseRate : Int!
    var privilegeAmount : Float!
    var privilegePersonTime : Int!
    var qq : String!
    var storeAuth : Int!
    var storeBanner : AnyObject!
    var storeCity : String!
    var storeCityid : Int!
    var storeCloseTime : Int!
    var storeCloseTimeSection : AnyObject!
    var storeCollect : Int!
    var storeCredit : Int!
    var storeDeliverycredit : Int!
    var storeDesccredit : Int!
    var storeId : Int!
    var storeLevel : Int!
    var storeLogo : String!
    var storeName : String!
    var storeOpenTime : Int!
    var storeOpenTimeSection : AnyObject!
    var storeProvince : String!
    var storeProvinceid : Int!
    var storeRecommend : Int!
    var storeRegion : String!
    var storeRegionid : Int!
    var storeServicecredit : Int!
    var storeTheme : Int!
    var storeType : AnyObject!
    var takeout : Float!
    var tel : String!
    var twoDimensionCode : String!
    var zip : String!
    
    
    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON!){
        if json == nil{
            return
        }
        affiliateType = json["affiliate_type"].stringValue
        attachment = json["attachment"].stringValue
        attr = json["attr"].stringValue
        backcash = json["backcash"].floatValue
        bankAccountName = json["bank_account_name"].stringValue
        bankAccountNumber = json["bank_account_number"].stringValue
        bankCity = json["bank_city"].stringValue
        bankCityid = json["bank_cityid"].intValue
        bankCode = json["bank_code"].stringValue
        bankName = json["bank_name"].stringValue
        bankProvince = json["bank_province"].stringValue
        bankProvinceid = json["bank_provinceid"].intValue
        bankRegion = json["bank_region"].stringValue
        bankRegionid = json["bank_regionid"].intValue
        cityCode = json["city_code"].stringValue
        commission = json["commission"].intValue
        connum = json["connum"].stringValue
        createTime = json["create_time"].intValue
        customImg = json["custom_img"].stringValue
        customImg1 = json["custom_img1"].stringValue
        customImg2 = json["custom_img2"].stringValue
        customImg3 = json["custom_img3"].stringValue
        descriptionField = json["description"].stringValue
        disabled = json["disabled"].intValue
        discount = json["discount"].floatValue
        distributionAttribute = json["distribution_attribute"].stringValue
        endTime = json["end_time"].intValue
        goodsNum = json["goods_num"].intValue
        goodsNumEnable = json["goods_num_enable"].intValue
        idImg = json["id_img"].stringValue
        idNumber = json["id_number"].stringValue
        isclose = json["isclose"].intValue
        isjoin = json["isjoin"].intValue
        latitude = json["latitude"].floatValue
        licenseImg = json["license_img"].stringValue
        logisticsCost = json["logistics_cost"].intValue
        logisticsCostDescription = json["logistics_cost_description"].stringValue
        longitude = json["longitude"].intValue
        memberId = json["member_id"].intValue
        memberName = json["member_name"].stringValue
        nameAuth = json["name_auth"].intValue
        praiseRate = json["praise_rate"].intValue
        privilegeAmount = json["privilege_amount"].floatValue
        privilegePersonTime = json["privilege_person_time"].intValue
        qq = json["qq"].stringValue
        storeAuth = json["store_auth"].intValue
        storeBanner = json["store_banner"].stringValue as AnyObject!
        storeCity = json["store_city"].stringValue
        storeCityid = json["store_cityid"].intValue
        storeCloseTime = json["store_close_time"].intValue
        storeCloseTimeSection = json["store_close_time_section"].stringValue as AnyObject!
        storeCollect = json["store_collect"].intValue
        storeCredit = json["store_credit"].intValue
        storeDeliverycredit = json["store_deliverycredit"].intValue
        storeDesccredit = json["store_desccredit"].intValue
        storeId = json["store_id"].intValue
        storeLevel = json["store_level"].intValue
        storeLogo = json["store_logo"].stringValue
        storeName = json["store_name"].stringValue
        storeOpenTime = json["store_open_time"].intValue
        storeOpenTimeSection = json["store_open_time_section"].stringValue as AnyObject!
        storeProvince = json["store_province"].stringValue
        storeProvinceid = json["store_provinceid"].intValue
        storeRecommend = json["store_recommend"].intValue
        storeRegion = json["store_region"].stringValue
        storeRegionid = json["store_regionid"].intValue
        storeServicecredit = json["store_servicecredit"].intValue
        storeTheme = json["store_theme"].intValue
        storeType = json["store_type"].stringValue as AnyObject!
        takeout = json["takeout"].floatValue
        tel = json["tel"].stringValue
        twoDimensionCode = json["two_dimension_code"].stringValue
        zip = json["zip"].stringValue
    }
    
}


class findByTagIdData : NSObject{
    
    var data : [findByTagId]!
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
        data = [];
        let dataArray = json["data"].arrayValue
        for dataJson in dataArray{
            let value = findByTagId(fromJson: dataJson)
            data.append(value)
        }
        message = json["message"].stringValue
        reserve = json["reserve"].stringValue
        result = json["result"].intValue
    }
    
}





