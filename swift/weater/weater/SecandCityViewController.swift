//
//  SecandCityViewController.swift
//  weater
//
//  Created by liaolongcheng on 13-8-4.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit

class SecandCityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var _firstCityId:NSString?
    var _sourceDic:NSDictionary!
    var secandCityTableView: UITableView!
    
    init(firstId:NSString)
    {
        super.init(nibName: "SecandCityViewController", bundle: nil)
        _firstCityId = firstId
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSource()
    
        secandCityTableView = UITableView(frame: CGRectMake(0, 0, 320,CGRectGetHeight(self.view.frame)), style: UITableViewStyle.Plain)
        secandCityTableView.dataSource = self;
        secandCityTableView.delegate = self;
        self.view.addSubview(secandCityTableView)
        //http://m.weather.com.cn/data/101160101.html
        
    
//        var manager:AFHTTPRequestOperationManager = AFHTTPRequestOperationManager(baseURL: nil)
//        manager.GET("http://m.weather.com.cn/data/101160101.html", parameters: nil, success: {(operation,object)->() in
//            
//            println(object)
//            
//            }, failure: {(operation,error)->() in
//            
//        })
        //(operation,object)
    }
    
    func loadSource()
    {
        var filePath:String = NSBundle.mainBundle().pathForResource("SecondCityList", ofType: "plist")
        _sourceDic = NSDictionary(contentsOfFile: filePath)[_firstCityId] as? NSDictionary
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return _sourceDic.allKeys.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let str = "Cell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(str) as? UITableViewCell
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: str)
        }
        cell!.textLabel.text = _sourceDic.allValues[indexPath.row] as String
        cell!.textLabel.textColor = ColorHelper.getSomeColor()

        return cell
        
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        var cityId:NSDictionary = [_sourceDic.allKeys[indexPath.row] as NSString:_sourceDic.allValues[indexPath.row] as NSString]
        var weaterViewController = WeatherViewController(cityInfo:cityId)
        self.navigationController.pushViewController(weaterViewController, animated: true)
    }
    
}
