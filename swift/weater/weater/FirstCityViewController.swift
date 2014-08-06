//
//  FirstCityViewController.swift
//  weater
//
//  Created by liaolongcheng on 13-8-4.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit

class FirstCityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    var _sourceDic:NSDictionary!
    
    @IBOutlet var firstCityTableView: UITableView!
    
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)
    {
        super.init(nibName: nibName, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSource()
        firstCityTableView.delegate = self;
        firstCityTableView.dataSource = self;
    }

    func loadSource()
    {
        var filePath = NSBundle.mainBundle().pathForResource("FirstCityList", ofType: "plist")
        _sourceDic = NSDictionary(contentsOfFile: filePath)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 2
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        if section == 0
        {
            return _sourceDic["Other"].count
        }
        else if section == 1
        {
            return _sourceDic["Our"].count
        }
        return 0
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let str = "Cell"
        var cell:FirstCityCelllTableViewCell? = tableView.dequeueReusableCellWithIdentifier(str) as? FirstCityCelllTableViewCell
        if cell == nil
        {
            cell = NSBundle.mainBundle().loadNibNamed("FirstCityCelllTableViewCell", owner: nil, options: nil)[0] as? FirstCityCelllTableViewCell
            cell!.accessoryType = UITableViewCellAccessoryType.DetailButton
        }
        if indexPath.section == 0
        {
            var keyStr:NSString = _sourceDic["Other"].allKeys?[indexPath.row] as NSString
            var valueStr:NSString = _sourceDic["Other"].allValues?[indexPath.row] as NSString
            
            cell!.firstLable.text = valueStr
            cell!.firstLable.textColor = ColorHelper.getSomeColor()
 
            cell!.secandLable.text = keyStr
            cell!.secandLable.textColor = ColorHelper.getSomeColor()
            
        }
        else if indexPath.section == 1
        {
            var keyStr:NSString = _sourceDic["Our"].allValues?[indexPath.row] as NSString
            var rang:NSRange = keyStr.rangeOfString("&")
            var firstTitle = keyStr.substringToIndex(rang.location)
            var secandTitle = keyStr.substringFromIndex(rang.location + 1)
            
            cell!.firstLable.text = firstTitle
            cell!.firstLable.textColor = ColorHelper.getSomeColor()
            cell!.secandLable.text = secandTitle
            cell!.secandLable.textColor = ColorHelper.getSomeColor()
        }
        return cell
    }
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!
    {
        if section == 0
        {
            return "Other"
        }
        else if section == 1
        {
            return "Our"
        }
        return nil
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        var firstId:NSString?
        if indexPath.section == 0
        {
            firstId = _sourceDic["Other"].allKeys?[indexPath.row] as? NSString
        }
        else if indexPath.section == 1
        {
            firstId = _sourceDic["Our"].allKeys?[indexPath.row] as? NSString
        }
        
        var secandCityViewController = SecandCityViewController(firstId: firstId!)
        self.navigationController.pushViewController(secandCityViewController, animated: true)
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat
    {
        return 44
    }
  
}
