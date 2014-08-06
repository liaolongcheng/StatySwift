//
//  ColorHelper.swift
//  weater
//
//  Created by liaolongcheng on 13-8-4.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit

class ColorHelper: NSObject {

    var aa:Array<UIColor>?
    class var colors:Array<UIColor>
    {
        get{
          
            return [UIColor.brownColor(),UIColor.purpleColor(),UIColor.lightGrayColor(),UIColor.grayColor(),UIColor.orangeColor(),UIColor.redColor(),UIColor.blueColor(),UIColor.cyanColor(),UIColor.yellowColor(),UIColor.magentaColor()]
    }
    
    }
    

    class func getSomeColor() -> UIColor!
    {
        var index:Int = Int(arc4random() % UInt32(self.colors.count))
        var color:UIColor = self.colors[index]
        return color
    }
   
}
