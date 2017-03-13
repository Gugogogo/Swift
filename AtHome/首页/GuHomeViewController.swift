//
//  GuHomeViewController.swift
//  AtHome
//
//  Created by Gu on 16/4/18.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import SDCycleScrollView
import SwiftyJSON
import Alamofire



class GuHomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var DataSource = NSMutableArray()
    var CollectionDataSource = NSMutableArray()
    var ThirdData = NSMutableArray()
    
    var tempID = String()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        self.navigationController?.navigationBar.isTranslucent = true;
        //        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.clear
        
        self.HeaderView.addSubview(ScrollView)
        self.HeaderView.addSubview(MyCollectionView)
        self.HeaderView.addSubview(ThirdView)
        view.backgroundColor = RGB2244546
        view.addSubview(MytableView)
        
        getCellData()
        getScrollView()
    }
    
    //MARK: 懒加载 tableView SDCycleScrollView
    lazy var HeaderView:UIView = {
        let MyHeaderView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height:  200+160+15+135+15))
        MyHeaderView.backgroundColor = RGBBackgroud
        return MyHeaderView
    }()
    
    lazy var MytableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y:0, width: ScreenWidth, height: ScreenHeight))
        tableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "GuPreferentialTableViewCell", bundle: nil), forCellReuseIdentifier: "GuPreferentialTableViewCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
        tableView.translatesAutoresizingMaskIntoConstraints = false;
        tableView.tableHeaderView = self.HeaderView
        return tableView
    }()
    lazy var ScrollView:SDCycleScrollView = {
        let  view = SDCycleScrollView.init()
        view.currentPageDotColor = UIColor.red
        view.pageDotColor = UIColor.white
        view.frame = CGRect.init(x: 0, y: 0, width:ScreenWidth , height: 200)
        return view
    }()
    
    lazy var MyCollectionView: UICollectionView = {
        var flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 0
        //行距
        flowLayout.minimumInteritemSpacing = 0
        //列距
        flowLayout.itemSize = CGSize.init(width: ScreenWidth/5, height:  80);
        let CollectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 200, width: ScreenWidth, height: 160), collectionViewLayout: flowLayout)
        CollectionView.backgroundColor = UIColor.white
        CollectionView.register(UINib.init(nibName: "GuHomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GuHomeCollectionViewCell")
        CollectionView.dataSource = self;
        CollectionView.delegate = self
        
        
        return CollectionView
    }()
    
    lazy var ThirdView: GuThirdView = {
        
        let thirdView = GuThirdView.init(frame: CGRect.init(x: 0, y:ViewH(view: self.MyCollectionView)+ViewY(view: self.MyCollectionView) + 15 , width: ScreenWidth, height: 135))
        
        return thirdView
    }()
    
    lazy var LastCollection: UICollectionView = {
        
        var flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 0
        //行距
        flowLayout.minimumInteritemSpacing = 0
        //列距
        flowLayout.itemSize = CGSize.init(width: ScreenWidth/5, height:  80);
        let CollectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 200, width: ScreenWidth, height: 160), collectionViewLayout: flowLayout)
        CollectionView.backgroundColor = UIColor.white
        CollectionView.register(UINib.init(nibName: "GuHomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GuHomeCollectionViewCell")
        CollectionView.dataSource = self;
        CollectionView.delegate = self
        return CollectionView
    }()
    
    //MARK: 获取cell数据
    func getData()  {
        Alamofire.request("http://m.adjo2o.com/webproxy/api/adjo2o/adjStore!findByTag.do?pageNum=1&pagesize=10&tagId=1128&cityCode=490").response { (response) in
            let json = JSON.init(data: response.data!)
            let model = findByTagIdData.init(fromJson:json)
            if model.result == 1{
                for data in model.data{
                    
                    self.DataSource.add(data)
                }
                self.MytableView.reloadData()
            }else{return}
        }
    }
    
    
    func getCellData() {
        
        let netWork = GuNetworkTools()
        
        netWork.getRequestData(type: .get, URLString: "adjStore!findByTag.do?pageNum=1&pagesize=10&tagId=1128&cityCode=490") { (response) in
            let model = findByTagIdData.init(fromJson:response as! JSON)
            if model.result == 1{
                for data in model.data{
                    
                    self.DataSource.add(data)
                }
                self.MytableView.reloadData()
            }else{return}
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.DataSource.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            var  Hcell = self.MytableView.dequeueReusableCell(withIdentifier: "cell")
            if   Hcell == nil {
                Hcell = UITableViewCell.init(style:.default, reuseIdentifier: "cell")
                Hcell?.selectionStyle = .none
            }
            Hcell?.selectionStyle = .none
            Hcell?.imageView?.image = UIImage.init(named: "特别推荐icon")
            Hcell?.textLabel?.text = "特别推荐"
            Hcell?.separatorInset = UIEdgeInsets.zero;
            return Hcell!
            
        }
        else{
            var HomeCell = GuPreferentialTableViewCell()
            
            HomeCell = HomeCell.cellWithTableView(tableView: self.MytableView) as! GuPreferentialTableViewCell
            HomeCell.findByTag(model: self.DataSource[indexPath.row-1] as!findByTagId)
            HomeCell.buttonModel = {
                (_ Model:findByTagId?,str:NSString) in
                
                if str.contains("在线选购"){
                    print("***在线选购***"+(Model?.storeName)!+"******")
                }else{
                    print("***优惠买单***"+(Model?.storeName)!+"******")
                }
            }
            return HomeCell
        }
    }
    //
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 50
        }
        return 168
        
    }
    func newPostingBtn(button:UIButton)  {
        
        let num = button.tag;
        let StoreTag:findByTagId  = self.DataSource[num] as!findByTagId
        print(StoreTag.storeName)
    }
    //MARK: 获取轮播图数据+10个功能
    func getScrollView()  {
        let imageURLStrings:NSMutableArray = []
        Alamofire.request("http://m.adjo2o.com/webproxy/api/adjo2o/adjadcComment!adcfindAll.do?appVersion=v00.00.27&cityCode=490&JSESSIONID=D646B3FE2E2920F5C5A784E4453D6477").response { (responseJSON) in
            
            let HeadJson = JSON.init(data: responseJSON.data!)
            let model =  AdsAndClassificationResponse.init(fromJson: HeadJson)
            if model.result == 1{
                for i in 0..<model.data.count{
                    
                    let ads:AdsAndClassification = model.data[i];
                    
                    switch ads.position{
                    case  0:
                        let num = ads.list.count
                        for  i in 0..<num{
                            let obj:List = ads.list[i]
                            let urlStr:String = obj.atturl.replacingOccurrences(of: "fs:", with: picsUrl)
                            imageURLStrings.add(urlStr)
                        }
                        self.ScrollView.imageURLStringsGroup = imageURLStrings as [AnyObject]!
                        
                        break
                    case  1:
                        
                        let num = ads.list.count
                        for  i in 0..<num{
                            let obj:List = ads.list[i]
                            
                            self.CollectionDataSource.add(obj)
                        }
                        self.MyCollectionView.reloadData()
                        break
                    case  2:
                        
                        let num = ads.list.count
                        for  i in 0..<num{
                            let obj:List = ads.list[i]
                            
                            self.ThirdData.add(obj)
                        }
                        
                        self.ThirdView.imageData(array: self.ThirdData)
                        
                        break
                        
                    default: break
                    }
                    
                }
                
                
                let set:CharacterSet = CharacterSet.init(charactersIn: "{}:")
                let array = model.reserve.components(separatedBy: set);
                let ID = array[2]
                self.tempID = ID.replacingOccurrences(of: "\"", with: "")
            }
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.CollectionDataSource.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell:GuHomeCollectionViewCell = GuHomeCollectionViewCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GuHomeCollectionViewCell", for: indexPath) as!GuHomeCollectionViewCell
        cell.homecellResult(model: self.CollectionDataSource[indexPath.row] as!List)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = self.CollectionDataSource[indexPath.row] as? List
        
        if (data?.url.contains("List"))! {
            let PreferentialPay = GuPreferentialViewController()
            PreferentialPay.tempID = self.tempID
            PreferentialPay.datasource  = data!
            self.navigationController?.pushViewController(PreferentialPay, animated: false)
            
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //UIColor.init(red: 224, green: 45, blue: 46, alpha: 1)
        
        let offsetY:CGFloat = scrollView.contentOffset.y
        if offsetY > 50{
            UINavigationBar.appearance().isTranslucent     = false
            self.navigationController?.navigationBar.barTintColor = RGB2244546
            
            self.navigationController?.navigationBar.subviews[0].alpha = 1.0
        }else{
            UINavigationBar.appearance().isTranslucent     = true
            self.navigationController?.navigationBar.barTintColor = UIColor.clear
            self.navigationController?.navigationBar.subviews[0].alpha = 0.0
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        self.navigationController?.navigationBar.barTintColor = RGB2244546
        
        self.navigationController?.navigationBar.subviews[0].alpha = 1.0
        self.navigationController?.navigationBar.subviews[1] .removeFromSuperview()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.subviews[1] .removeFromSuperview()
        //        self.navigationController?.navigationBar.isHidden = true
    }
    
    
}
