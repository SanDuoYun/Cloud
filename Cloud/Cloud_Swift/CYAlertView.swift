//
//  CYAlertView.swift
//  Cloud
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class CYAlertView: UIViewController {
    let define = Define()
    let bgView = UIView()
    let cyAlertView = UIAlertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.backgroundColor = UIColor.whiteColor()
        bgView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self),define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        self.view.addSubview(bgView)
        
      //  cyAlertView(title: String?, message: String?, delegate: AnyObject?, cancelButtonTitle: String?)
        cyAlertView.title = "UIAlertView Test!!!"
        cyAlertView.message = "A Easy Test"
        cyAlertView.delegate = nil
        cyAlertView.addButtonWithTitle("OK")
        cyAlertView.addButtonWithTitle("Cancel")
        cyAlertView.addButtonWithTitle("Select")
        cyAlertView.show()
    }
    
}
