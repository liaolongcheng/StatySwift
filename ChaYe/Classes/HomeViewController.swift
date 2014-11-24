//
//  HomeViewController.swift
//  ChaYe
//
//  Created by user on 14/11/14.
//  Copyright (c) 2014年 user. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var weaterTableView: UITableView!
    @IBOutlet weak var tempNavView: UIView!
    var sourceArray:NSMutableArray!;
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backButton.hidden = true;
        self.titleLabel.hidden = true;
        self.navView.hidden = true;
        self.view.exchangeSubviewAtIndex(0, withSubviewAtIndex: 1)
        sourceArray = NSMutableArray();
        weaterTableView.dataSource = self;
        weaterTableView.delegate = self;
        
        var dateFarmart = NSDateFormatter();
        dateFarmart.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var dateString = dateFarmart.stringFromDate(NSDate())
        var parDic = ["time":dateString,"uid":"0","ta_type":"","sourceID":"1","count":"20"];
        
        var manager = HttpHepler.sharedManager();
        manager .POST("http://www.chashangzg.com/AppHandler/TeaAnnounceHandler.ashx", parameters: parDic, success: { (operation:AFHTTPRequestOperation!, responseObject:AnyObject!) -> Void in
            
            self.sourceArray = responseObject["TeaAnnounces"] as NSMutableArray;
            self.weaterTableView.reloadData()
            
            }) { (operation:AFHTTPRequestOperation!, error:NSError!) -> Void in
            
        };
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let str = "Cell"
        var cell:MainCell? = tableView.dequeueReusableCellWithIdentifier(str) as? MainCell
        if(cell == nil)
        {
            cell = NSBundle.mainBundle().loadNibNamed("MainCell", owner: nil, options: nil)[0] as? MainCell
        }
        
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 116;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
