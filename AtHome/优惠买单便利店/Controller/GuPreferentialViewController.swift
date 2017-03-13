//
//  GuPreferentialViewController.swift
//  AtHome
//
//  Created by Gu on 16/9/3.
//  Copyright © 2016年 MengTai. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class GuPreferentialViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var datasource:AnyObject  = List.self
    var GoodsCat = NSMutableArray()
    var tagID = NSInteger()

    
    
    var tempID = String()
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.subviews[0].alpha = 1.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        self.automaticallyAdjustsScrollViewInsets = false
        
        let data:List = datasource as!List
        
//        self.tagID = data.url
        
        data.url
        
        let array = data.url.components(separatedBy: CharacterSet.init(charactersIn: "{}&="))
        
        let tagID:NSString = array[1] as NSString
        self.tagID = tagID.integerValue
        
        
        
        
        self.title = data.aname
        
        view.addSubview(MytableView)
        view.addSubview(topButton)
        
        
        
        findByTagId()
        
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    
    lazy var MytableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y:0, width: ScreenWidth, height: ScreenHeight))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "GuPreferentialTableViewCell", bundle: nil), forCellReuseIdentifier: "GuPreferentialTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.rowHeight = 168
        tableView.tableFooterView = UIView()
        tableView.translatesAutoresizingMaskIntoConstraints = false;
        
        return tableView
    }()
    lazy var topButton: UIButton = {
        let button = UIButton.init(type:.custom)
        button.frame = CGRect.init(x: ScreenWidth-40, y:self.view.frame.size.height-164, width: 40, height: 40)
        button.setBackgroundImage(UIImage.init(named: "置顶"), for: .normal)
        button.addTarget(self, action: #selector(DoSomething), for: .touchUpInside)
        button.clipsToBounds = true
        button.isHidden = true
        self.view.bringSubview(toFront: button)
        
        return button
    }()
    
    func DoSomething()  {
        self.MytableView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func findByTagId()  {
        
        
         let netWork = GuNetworkTools()
        
         netWork.getRequestData(type: .get, URLString: "adjStoreType!findByTagId.do?tag_id=\(self.tagID)&JSESSIONID=D79E5EB18200BB91F18E561C86F3CD9D") { (response) in
            
            let model = TagId.init(fromJson:response as! JSON )
            if model.result == 1{
                for data in model.data{
                    if data.listShow == "0" {
                        
                        let typeID:NSInteger = data.typeId
                        
                        let URL  = "http://m.adjo2o.com/webproxy/api/adjo2o/adjStoreType!findByTagAndType.do?tag_id=\(self.tagID)&cityCode=490&pageNum=1&pagesize=99&type_id=\(typeID)"
                        Alamofire.request(URL)
                            .response(completionHandler: { (data) in
                                
                                let json = JSON.init(data: data.data!)
                                let model = findByTagIdData.init(fromJson:json)
                                if model.result == 1 {
                                    for data in model.data {self.GoodsCat.add(data)}
                                }
                                self.MytableView.reloadData()
                                
                                
                            })
                    }
                }
                
            }
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.GoodsCat.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var HomeCell = GuPreferentialTableViewCell()
        
        HomeCell = HomeCell.cellWithTableView(tableView: self.MytableView) as! GuPreferentialTableViewCell
        HomeCell.findByTag(model: self.GoodsCat[indexPath.row] as! findByTagId)
        
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
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.MytableView {
            let  offsetY:CGFloat = self.MytableView.contentOffset.y
            if offsetY > 350 {
                topButton.isHidden = false
            }else{
                
                topButton.isHidden = true
            }
            
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
