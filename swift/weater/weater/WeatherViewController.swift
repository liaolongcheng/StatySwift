//
//  WeatherViewController.swift
//  weater
//
//  Created by liaolongcheng on 13-8-5.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit

class WeatherViewController : UIViewController,UITableViewDataSource,UITableViewDelegate {
    var _cityId:NSString?
    var _weaterDic:NSDictionary?
    
  
    @IBOutlet var weaterTableView: UITableView!
    init(cityId:NSString)
    {
        super.init(nibName: "WeatherViewController", bundle: nil)
        _cityId = cityId
    }
    init(cityInfo:NSDictionary)
    {
        super.init(nibName: "WeatherViewController", bundle: nil)
        _cityId = cityInfo.allKeys[0] as? NSString
        var home:HomeViewController = HomeViewController.shearedHomeViewController()
        home._sourceArray.addObject(cityInfo)
        home.weaterTableView.reloadData()
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downDataSource()
    }
    
    
    func downDataSource()
    {
        var manager = AFHTTPRequestOperationManager(baseURL: nil)
        manager.GET("http://m.weather.com.cn/data/"+_cityId!+".html", parameters: nil, success:{(operation,responseObject) in
            
            self._weaterDic = responseObject!["weatherinfo"] as? NSDictionary
            self.weaterTableView.delegate = self
            self.weaterTableView.dataSource = self;
            self.weaterTableView.reloadData()
            
            }, failure: {(operation,error) in
            
                var alert = UIAlertView(title: "系统提示", message: "请求出错", delegate: nil, cancelButtonTitle: "取消", otherButtonTitles: "确定")
                alert.show()
        })
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 2
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return 6
        }
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let str1 = "Cell"
        let str2 = "Cell1"
        if indexPath.section == 0
        {
            var cell:WeaterCellTableViewCell? = tableView.dequeueReusableCellWithIdentifier(str1) as? WeaterCellTableViewCell
            
            if cell == nil
            {
                cell = NSBundle.mainBundle().loadNibNamed("WeaterCellTableViewCell", owner: nil, options: nil)[0] as? WeaterCellTableViewCell
                NSLog("fasd")
            }
            var formatter:NSDateFormatter = NSDateFormatter()
            formatter.dateFormat = "yyyy年MM月dd日"
            var time:String = formatter.stringFromDate(NSDate(timeInterval:Double(indexPath.row*24*60*60), sinceDate:formatter.dateFromString(String(_weaterDic!.objectForKey("date_y") as NSString))!))
            cell!.timeLable.text = time
            cell!.timeLable.textColor = ColorHelper.getSomeColor()
            cell!.wenduLable.text = _weaterDic!["temp\(indexPath.row + 1)"] as? String
            cell!.wenduLable.textColor = ColorHelper.getSomeColor()
            cell!.fengliLable.text = _weaterDic!["wind\(indexPath.row + 1)"] as? String
            cell!.fengliLable.textColor = ColorHelper.getSomeColor()
            cell!.tianqiLable.text = _weaterDic!["weather\(indexPath.row + 1)"] as? String
            cell!.tianqiLable.textColor = ColorHelper.getSomeColor()
            cell!.firstImageView.image = UIImage(named: NSString(format:"d%@.png",_weaterDic!["img\(indexPath.row * 2 + 1)"] as String))
            cell!.secandImageView.image = UIImage(named: NSString(format:"n%@.png",_weaterDic!["img\(indexPath.row * 2 + 2)"] as String))
            
            return cell!
        }
        else if indexPath.section == 1
        {
            var cell:ZhiShuCellTableViewCell? = tableView.dequeueReusableCellWithIdentifier(str2) as? ZhiShuCellTableViewCell
            if cell == nil
            {
                cell = NSBundle.mainBundle().loadNibNamed("ZhiShuCellTableViewCell", owner: nil, options: nil)[0] as? ZhiShuCellTableViewCell
            }
            cell!.photoImageView.image = UIImage(named: "d25.png")
            cell!.titleLable.text = "adfadfa"
            cell!.titleLable.textColor = ColorHelper.getSomeColor()
            return cell!
        }
        return UITableViewCell()
    }
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat
    {
        if indexPath.section == 0
        {
            return 85
        }
        else if indexPath.section == 1
        {
            return 60
        }
        return 0
    }
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!
    {
        if section == 1
        {
            return _weaterDic!["index_d"] as String
        }
        return nil
    }
    
    
}
