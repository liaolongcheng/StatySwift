//
//  ViewController.swift
//  firstUI
//
//  Created by newios on 14-8-1.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var myImageView:UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTableView:UITableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        myTableView.delegate = self
        myTableView.dataSource = self
        self.view.addSubview(myTableView)
        
        var myView = UIView(frame: CGRectMake(0, 0, 100, 100))
        myView.backgroundColor = UIColor.redColor()
        self.view .addSubview(myView)
        
        var myButton:UIButton = UIButton(frame: CGRect(x: 200, y: 200, width: 100, height: 30))
        myButton.backgroundColor = UIColor.grayColor()
        myButton.setTitle("myButton", forState: UIControlState.Normal)
        myButton.addTarget(self, action:"myButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(myButton)
        
        myImageView = UIImageView(frame: CGRectMake(100, 300, 100, 100))
        myImageView!.image = UIImage(named: "98614.jpg")
        myImageView!.backgroundColor = UIColor.redColor()
        self.view.addSubview(myImageView)
        
    }
    
    
    func myButtonClick(btn:UIButton)
    {
        println(btn)
        println("我点击了按钮")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1;
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 30
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        
        let cellId = "Cell"
        var cell :myCell? = tableView.dequeueReusableCellWithIdentifier(cellId) as? myCell
        if cell == nil
        {
            cell = NSBundle.mainBundle().loadNibNamed("myCell", owner: nil, options: nil)[0] as? myCell
            cell!.setButtonClick({
                (button,aIndexPath) in
                
                    NSLog("%@,%d",button,indexPath.row)
                })
        }
        //cell!.mylable.text = "wangliang"
        return cell
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat
    {
        return 103
    }
    

}

