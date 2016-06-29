//
//  CYButton.swift
//  Cloud
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class CYButton: UIViewController {
    
    let define = Define()
    let bgView = UIView()
    let cyButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.backgroundColor = UIColor.whiteColor()
        bgView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self),define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        self.view.addSubview(bgView)
        
        cyButton.frame = CGRectMake((self.view.frame.size.width-200)/2, 100, 200, 100)
        cyButton.backgroundColor = UIColor.clearColor()
        cyButton.setTitle("UIButton Test", forState: UIControlState.Normal)
        cyButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        cyButton.addTarget(self, action: #selector(cyButtonAction), forControlEvents: UIControlEvents.TouchUpInside)
        bgView.addSubview(cyButton)
    }
    
    func cyButtonAction() {
        
        print("UIButton Test!!!")
    }
}
