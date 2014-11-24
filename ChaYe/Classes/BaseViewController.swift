//
//  BaseViewController.swift
//  ChaYe
//
//  Created by user on 14/11/14.
//  Copyright (c) 2014年 user. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var stateView:UIView!
    var navView:UIView!
    var backButton:UIButton!
    var titleLabel:UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.view.setTranslatesAutoresizingMaskIntoConstraints(false)
    
//        var conView:UIView = self.contentView
//        var textLbl :UIView = self.headLineLbl!
//        var detailLbl = self.detailLbl!
        //        var textLbl :UIView = self.textLabel!
        //        var detailLbl = self.detailTextLabel!
//        var  viewDict = ["conView":conView,"textLbl":textLbl,"detailLbl":detailLbl]
//        var contraints:NSMutableArray = NSMutableArray()
//        
//        var metrics:Dictionary = ["hPadding":10,"vPadding":8];
//        
//        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-hPadding-[textLbl]-hPadding-|", options: NSLayoutFormatOptions.AlignAllLeft, metrics: metrics, views: viewDict))
//        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-hPadding-[detailLbl]-hPadding-|", options: NSLayoutFormatOptions.AlignAllLeft, metrics: metrics, views: viewDict))
//        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-vPadding-[textLbl]-vPadding-[detailLbl]-vPadding-|", options: NSLayoutFormatOptions.AlignAllLeft, metrics: metrics, views: viewDict))
        
        //创建状态栏视图
        stateView = UIView(frame: CGRectMake(0, 0, 320, 20));
        stateView?.backgroundColor = UIColor.blackColor()
        stateView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(stateView!)
        
        var layoutLeft = NSLayoutConstraint(item: stateView!, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute:.Left, multiplier: 1, constant: 0);
        var layoutRight = NSLayoutConstraint(item: stateView!, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        var layoytHeight = NSLayoutConstraint(item: stateView!, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 20);
        self.view.addConstraints([layoutLeft,layoutRight,layoytHeight])


        navView = UIView(frame: CGRectMake(0, 0, 0, 0));
        navView.setTranslatesAutoresizingMaskIntoConstraints(false);
        self.view .addSubview(navView)
        navView.backgroundColor = UIColor(red: 153.0/255.0, green: 204.0/255, blue:51.0/255 , alpha: 1.0);
        var con:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[navView]-0-|", options: NSLayoutFormatOptions.AlignAllLeft, metrics: ["left":0,"right":0], views: ["navView":navView])
        
        var con1:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[navView(44)]", options: NSLayoutFormatOptions.AlignAllLeft, metrics:nil, views:["navView":navView])
        self.view.addConstraints(con);
        self.view.addConstraints(con1);
        
        backButton = UIButton(frame: CGRectMake(0, 0, 0, 0))
        backButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        backButton.addTarget(self, action: "backButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        backButton.setImage(UIImage(named: "but_13.png"), forState: UIControlState.Normal)
        navView.addSubview(backButton)
        
        navView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[backButton(50)]", options: NSLayoutFormatOptions.AlignAllLeft, metrics: nil, views: ["backButton":backButton]))
        
        navView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[backButton(44)]", options: NSLayoutFormatOptions.AlignAllLeft, metrics: nil, views: ["backButton":backButton]))
        
        titleLabel = UILabel(frame: CGRectMake(0, 0, 0, 0))
        titleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.text = self.navTitle()
        navView.addSubview(titleLabel)
        
        navView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[titleLable(200)]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["titleLable":titleLabel]))
        navView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLable(44)]", options: NSLayoutFormatOptions.AlignAllLeft, metrics: nil, views: ["titleLable":titleLabel]))
      
        navView.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem:navView , attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
        navView.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: navView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0))
        

        
//        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[stateView]|", options:NSLayoutFormatOptions.AlignAllBaseline , metrics: nil, views: ["stateView":stateView]))
//        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[stateView]-(>0)-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["stateView":stateView]))
        
        

        
        
        //[self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.btn(第一个视图是需要改变的视图) attribute:NSLayoutAttributeWidth(需要改变视图的属性) relatedBy:NSLayoutRelationEqual(跟相对视图的关系（大于等于，等于，小于等于）) toItem:self.view（相对视图） attribute:NSLayoutAttributeWidth（相对视图的属性） multiplier:0（乘数） constant:10（常量）]]; 需要改变的视图的属性等于相对视图的属性乘以乘数加上常量

    }
    func navTitle()->NSString
    {
        return "this is title";
    }
    
    func backButtonClick(button:AnyObject)->()
    {
        self.navigationController?.popViewControllerAnimated(true);
    }
}















