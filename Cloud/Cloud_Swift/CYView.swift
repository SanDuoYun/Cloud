//
//  CYView.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit
import Alamofire

class CYView: UIViewController {
    
    let define = Define()
    let cyView: UIView! = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setCyView()
        self.alamofireRequest()
        
        
    }
    
    func setCyView() {
        cyView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self), define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        cyView.backgroundColor = define.RGB(255, g: 255, b: 255)
        self.view.addSubview(self.cyView)
    }
    
    
    func alamofireRequest() {
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .response { response in
                print(response.2)
        }
    }
    
}
