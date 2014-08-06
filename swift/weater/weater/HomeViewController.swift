//
//  HomeViewController.swift
//  weater
//
//  Created by liaolongcheng on 13-8-3.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit
import QuartzCore

class HomeViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    lazy var _sourceArray:NSMutableArray = NSMutableArray()
    var timeLable:UILabel?
    
    @IBOutlet var menuBackView: UIView!
    @IBOutlet var weaterTableView: UITableView!
    
    
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)
    {
        super.init(nibName: nibName, bundle: nibBundleOrNil)
    }
    
    
    /**
    
    //单利模式实现的中方式
    
    方法一：
    class SwiftSingleton {
    class var shared: SwiftSingleton {
    return Inner.instance
    }
    
    struct Inner {
    static let instance: SwiftSingleton = SwiftSingleton()
    }
    }
    
    方法二（不能保证线程安全）
    class SwiftSingleton {
    class var shared: SwiftSingleton {
    if !Inner.instance {
    Inner.instance = SwiftSingleton()
    }
    return Inner.instance!
    }
    
    struct Inner {
    static var instance: SwiftSingleton?
    }
    }
    
    //方法三
    struct YRSingleton{
    static var predicate:dispatch_once_t = 0
    static var instance:HomeViewController? = nil
    }
    dispatch_once(&YRSingleton.predicate,{
    
    YRSingleton.instance=HomeViewController(nibName: "HomeViewController", bundle: nil)
    
    })
    return YRSingleton.instance!

    */
    //实现单利模式
    class func shearedHomeViewController() -> HomeViewController!
    {
        struct YRSingleton{
            static var predicate:dispatch_once_t = 0
            static var instance:HomeViewController? = nil
        }
        dispatch_once(&YRSingleton.predicate,{
            
            YRSingleton.instance=HomeViewController(nibName: "HomeViewController", bundle: nil)
       
        })
        return YRSingleton.instance!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        timeLable = UILabel(frame: CGRectMake(0, 0, 100, 30))
        timeLable!.center = CGPointMake(320/2, 44/2)
        timeLable!.textAlignment = NSTextAlignment.Center
        self.navigationController.navigationBar.addSubview(timeLable!);
        refreshTtile()
        
        
        self.menuBackView.layer.masksToBounds = true
        self.menuBackView.layer.cornerRadius = 10.0
        self.weaterTableView.delegate = self
        self.weaterTableView.dataSource = self
        
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector:"refreshTtile", userInfo: nil, repeats:true)
        
    }

    @IBAction func deleteButtonClick(sender: AnyObject) {
        
        self.weaterTableView.setEditing(!self.weaterTableView.editing, animated: true)
        
    }

    //更新时间
    func refreshTtile()
    {
        var date:NSDate = NSDate()
        var formater:NSDateFormatter = NSDateFormatter()
        formater.dateFormat = "HH:mm:ss"
        self.timeLable!.text = formater.stringFromDate(date)
        self.timeLable!.textColor = ColorHelper.getSomeColor()
    }
    @IBAction func addWeaterButtonClick(sender: AnyObject) {
    
        var firstCityViewContaroller = FirstCityViewController(nibName: "firstCityViewContaroller", bundle: nil)
        self.navigationController.pushViewController(firstCityViewContaroller, animated: true)
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return _sourceArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let str = "Cell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(str) as? UITableViewCell
        if (cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: str)
            cell!.backgroundColor = UIColor.whiteColor()
            cell!.textLabel.textAlignment = NSTextAlignment.Center
        }
        cell!.textLabel.text = _sourceArray[indexPath.row].allValues?[0] as NSString
        cell!.textLabel.textColor = ColorHelper.getSomeColor()
        return cell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        var weater = WeatherViewController(cityId: _sourceArray[indexPath.row].allKeys?[0] as NSString)
        self.navigationController.pushViewController(weater, animated: true)
    }

    @IBAction func helpeButtonClick(sender: AnyObject) {
        
        var helpView:UIView? = NSBundle.mainBundle().loadNibNamed("HelpView", owner: nil, options: nil)[0] as? UIView
        helpView!.frame = CGRectMake(14, 114, 293, 224)
        self.view .addSubview(helpView!)
        
        var trans:CATransition = CATransition()
        trans.type = "rippleEffect"
        trans.removedOnCompletion = true
        trans.duration = 1.0
        self.view.layer.addAnimation(trans, forKey: "animation")
        
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            _sourceArray.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
            
        }
    }
}



