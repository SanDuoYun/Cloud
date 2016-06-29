//
//  CYLabel.swift
//  Cloud
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class CYLabel: UIViewController {
    
    let define = Define()
    let bgView = UIView()
    let cyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.backgroundColor = UIColor.whiteColor()
        bgView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self),define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        self.view.addSubview(bgView)
        
        
        cyLabel.frame = CGRectMake(0, 100, self.view.frame.size.width, 30)
        cyLabel.backgroundColor = UIColor.clearColor()
        cyLabel.text = "UILabel Test!!!"
        cyLabel.textColor = UIColor.redColor()
        cyLabel.font = UIFont.systemFontOfSize(15)
        cyLabel.textAlignment = NSTextAlignment.Center
        bgView.addSubview(cyLabel)
        
    }
    
}
