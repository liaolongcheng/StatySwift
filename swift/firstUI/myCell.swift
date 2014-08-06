//
//  myCell.swift
//  firstUI
//
//  Created by newios on 14-8-1.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var mylable: UILabel!
    var _backBlock:((UIButton,NSIndexPath)->())?
    
    init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    func setButtonClick(backBlock:(UIButton,NSIndexPath)->())
    {
        _backBlock = backBlock;
    }
    
//    class func loadCell(buttonClickBlock:(UIButton,NSIndexPath)->())->myCell
//    {
//        var temp = NSBundle.mainBun   dle().loadNibNamed("myCell", owner: nil, options: nil)[0] as myCell
//        _backBlock = buttonClickBlock
//        return temp
//    }
    
    @IBAction func myButtonClick(sender: AnyObject) {
    
        var tableView:UITableView! = self.superview.superview as UITableView
        var indexPath:NSIndexPath! = tableView.indexPathForCell(self)

        _backBlock?(sender as UIButton,indexPath)
        
    }
    
}
