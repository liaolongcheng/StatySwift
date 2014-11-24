//
//  HttpHepler.swift
//  ChaYe
//
//  Created by user on 14/11/24.
//  Copyright (c) 2014年 user. All rights reserved.
//

import UIKit

class HttpHepler: NSObject {
  
    struct YRSingleton{
        static var predicate:dispatch_once_t = 0
        static var instance:AFHTTPRequestOperationManager? = nil
    }
    class func sharedManager()->AFHTTPRequestOperationManager
    {
        
        //延迟执行
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(5 * NSEC_PER_SEC)), dispatch_get_main_queue()) { () -> Void in
//            NSLog("aaaa");
//        };
        
        
        dispatch_once(&YRSingleton.predicate,{ () -> Void in
            
            YRSingleton.instance=AFHTTPRequestOperationManager(baseURL: nil)
            
        });
        
        
//        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
//        let group = dispatch_group_create()
//        for(id obj in array)
//            dispatch_group_async(group, queue, {
//                self.doWork(obj)
//            })
//        dispatch_group_notify(group, queue, {
//        self.doneWork  
//        })
//
//        
//        dispatch_release(group)
        
        //异步执行
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
//            //需要长时间处理的代码
//            dispatch_async(dispatch_get_main_queue(), {
//                //需要主线程执行的代码
//            })
//        })
   
        //var qu:dispatch_queue_t =
        
    
       
        return YRSingleton.instance!
    }
    
   
}
