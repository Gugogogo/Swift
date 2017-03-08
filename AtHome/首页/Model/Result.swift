//
//	Data.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class Result{

	var adjuncts : AnyObject!
	var big : AnyObject!
	var brandId : Int!
	var brief : AnyObject!
	var buyCount : Int!
	var buyMaxNum : Int!
	var buyNum : Int!
	var catId : Int!
	var cityCode : String!
	var commentNum : Int!
	var commission : Int!
	var cost : Float!
	var createTime : Int!
	var disabled : Int!
	var enableStore : Int!
	var endIndate : AnyObject!
	var firstNum : Int!
	var firstUnitprice : Int!
	var firstUpshelvesTime : Int!
	var goodsComment : AnyObject!
	var goodsId : Int!
	var goodsTransfeeCharge : Int!
	var goodsType : String!
	var grade : Int!
	var haveField : Int!
	var haveSpec : Int!
	var intro : String!
	var isGroupbuy : Int!
	var isPack : Int!
	var lastModify : Int!
	var lastUpshelvesTime : Int!
	var marketEnable : Int!
	var metaDescription : AnyObject!
	var metaKeywords : AnyObject!
	var mktprice : Float!
	var name : String!
	var noUseDate : String!
	var original : AnyObject!
	var p1 : AnyObject!
	var p10 : AnyObject!
	var p12 : AnyObject!
	var p13 : AnyObject!
	var p14 : AnyObject!
	var p15 : AnyObject!
	var p16 : AnyObject!
	var p17 : AnyObject!
	var p18 : AnyObject!
	var p19 : AnyObject!
	var p2 : AnyObject!
	var p20 : AnyObject!
	var p3 : AnyObject!
	var p4 : AnyObject!
	var p5 : AnyObject!
	var p6 : AnyObject!
	var p7 : AnyObject!
	var p8 : AnyObject!
	var p9 : AnyObject!
	var pageTitle : AnyObject!
	var params : String!
	var point : Int!
	var price : Float!
	var reservationFlag : Int!
	var reservationHours : Int!
	var sellerCids : AnyObject!
	var serviceType : String!
	var small : AnyObject!
	var sn : String!
	var sord : Int!
	var specs : String!
	var startIndate : AnyObject!
	var store : Int!
	var storeCatId : Int!
	var storeId : Int!
	var storeName : String!
	var templateId : AnyObject!
	var thumbnail : AnyObject!
	var typeId : Int!
	var unit : AnyObject!
	var useHolidayFlag : Int!
	var useRegulation : String!
	var viewCount : Int!
	var weight : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json == nil{
			return
		}
		adjuncts = json["adjuncts"].stringValue
		big = json["big"].stringValue
		brandId = json["brand_id"].intValue
		brief = json["brief"].stringValue
		buyCount = json["buy_count"].intValue
		buyMaxNum = json["buy_max_num"].intValue
		buyNum = json["buy_num"].intValue
		catId = json["cat_id"].intValue
		cityCode = json["city_code"].stringValue
		commentNum = json["comment_num"].intValue
		commission = json["commission"].intValue
		cost = json["cost"].floatValue
		createTime = json["create_time"].intValue
		disabled = json["disabled"].intValue
		enableStore = json["enable_store"].intValue
		endIndate = json["end_indate"].stringValue
		firstNum = json["first_num"].intValue
		firstUnitprice = json["first_unitprice"].intValue
		firstUpshelvesTime = json["first_upshelves_time"].intValue
		goodsComment = json["goods_comment"].stringValue
		goodsId = json["goods_id"].intValue
		goodsTransfeeCharge = json["goods_transfee_charge"].intValue
		goodsType = json["goods_type"].stringValue
		grade = json["grade"].intValue
		haveField = json["have_field"].intValue
		haveSpec = json["have_spec"].intValue
		intro = json["intro"].stringValue
		isGroupbuy = json["is_groupbuy"].intValue
		isPack = json["is_pack"].intValue
		lastModify = json["last_modify"].intValue
		lastUpshelvesTime = json["last_upshelves_time"].intValue
		marketEnable = json["market_enable"].intValue
		metaDescription = json["meta_description"].stringValue
		metaKeywords = json["meta_keywords"].stringValue
		mktprice = json["mktprice"].floatValue
		name = json["name"].stringValue
		noUseDate = json["no_use_date"].stringValue
		original = json["original"].stringValue
		p1 = json["p1"].stringValue
		p10 = json["p10"].stringValue
		p12 = json["p12"].stringValue
		p13 = json["p13"].stringValue
		p14 = json["p14"].stringValue
		p15 = json["p15"].stringValue
		p16 = json["p16"].stringValue
		p17 = json["p17"].stringValue
		p18 = json["p18"].stringValue
		p19 = json["p19"].stringValue
		p2 = json["p2"].stringValue
		p20 = json["p20"].stringValue
		p3 = json["p3"].stringValue
		p4 = json["p4"].stringValue
		p5 = json["p5"].stringValue
		p6 = json["p6"].stringValue
		p7 = json["p7"].stringValue
		p8 = json["p8"].stringValue
		p9 = json["p9"].stringValue
		pageTitle = json["page_title"].stringValue
		params = json["params"].stringValue
		point = json["point"].intValue
		price = json["price"].floatValue
		reservationFlag = json["reservation_flag"].intValue
		reservationHours = json["reservation_hours"].intValue
		sellerCids = json["seller_cids"].stringValue
		serviceType = json["service_type"].stringValue
		small = json["small"].stringValue
		sn = json["sn"].stringValue
		sord = json["sord"].intValue
		specs = json["specs"].stringValue
		startIndate = json["start_indate"].stringValue
		store = json["store"].intValue
		storeCatId = json["store_cat_id"].intValue
		storeId = json["store_id"].intValue
		storeName = json["store_name"].stringValue
		templateId = json["template_id"].stringValue
		thumbnail = json["thumbnail"].stringValue
		typeId = json["type_id"].intValue
		unit = json["unit"].stringValue
		useHolidayFlag = json["use_holiday_flag"].intValue
		useRegulation = json["use_regulation"].stringValue
		viewCount = json["view_count"].intValue
		weight = json["weight"].intValue
	}

}
