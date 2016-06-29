//
//  CYImgVw.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class CYImgVw: UIViewController {
    let define = Define()
    override func viewDidLoad() {
        super.viewDidLoad()
        let cyView = UIView()
        cyView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self), define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        cyView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(cyView)
        
        self.view.backgroundColor = UIColor.clearColor()
        let cyImage = UIImage(named: "1.jpg")
        let cyImageView = UIImageView()
        cyImageView.frame = CGRectMake((define.CY_VIEW_WIDTH(self.view)-80)/2, 100, 80, 80);
        cyImageView.image = cyImage
        cyImageView.backgroundColor = UIColor.whiteColor()
        cyView.addSubview(cyImageView)
    }
}
