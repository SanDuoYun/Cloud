//
//  Define.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class Define: UIViewController {
    
    let IS_IOS7 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0
    let IS_IOS8 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0
    let IS_IOS9 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 9.0
    
    func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green:g/255.0, blue: b/255.0, alpha: a/255.0)
    }
    
    func RGB(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green:g/255.0, blue: b/255.0, alpha: 1.0)
    }
    
    func CY_NAVBAR_HEIGHT(vwCtrl: UIViewController) -> CGFloat {
        return (vwCtrl.navigationController?.navigationBar.frame.size.height)!
    }
    
    func CY_STATUS_HEIGHT() -> CGFloat {
        return UIApplication.sharedApplication().statusBarFrame.size.height
    }
    
    func CY_NAVBAR_AND_STATUS_HEIGHT(vwCtrl: UIViewController) -> CGFloat {
        return CY_NAVBAR_HEIGHT(vwCtrl)+CY_STATUS_HEIGHT()
    }
    
    func CY_VIEW_WIDTH(vw: UIView) -> CGFloat {
        return vw.frame.size.width
    }
    
    func CY_VIEW_HEIGHT(vw: UIView) -> CGFloat {
        return vw.frame.size.height
    }
    
}