//
//  HelpView.swift
//  weater
//
//  Created by newios on 14-8-6.
//  Copyright (c) 2014年 liaolongcheng. All rights reserved.
//

import UIKit
import QuartzCore

class HelpView: UIView {

    @IBOutlet weak var scrollView: UIScrollView!

    
    override func willMoveToSuperview(newSuperview: UIView!)
    {
        self.backgroundColor = UIColor.clearColor()
        self.scrollView.backgroundColor = UIColor.clearColor()
        self.scrollView.pagingEnabled = true
        for (var i:Int = 0; i < 4; i++)
        {
            var imageView:UIImageView = UIImageView(frame: CGRectMake(CGFloat(i) * CGRectGetWidth(self.frame), 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)))
            imageView.image = UIImage(named:"\(i+1).png")
            self.scrollView.addSubview(imageView)
        }
        
        
        self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.scrollView.frame)*4, CGRectGetHeight(self.scrollView.frame))
    }

    @IBAction func closeButtonClick(sender: AnyObject) {
        
        var trans = CATransition()
        trans.type = "pageCurl"
        trans.duration = 0.2
        trans.removedOnCompletion = true
        trans.delegate = self
        self.layer.addAnimation(trans, forKey: "remove")
    }
    override func animationDidStop(anim: CAAnimation!, finished flag: Bool)
    {
        self.removeFromSuperview()
    }
}
