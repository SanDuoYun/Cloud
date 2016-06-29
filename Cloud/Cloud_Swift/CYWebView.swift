//
//  CYWebView.swift
//  Cloud
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit

class CYWebView: UIViewController {
    let define = Define()
    let bgView = UIView()
    var cyWebView = UIWebView()
    let cyButton = UIButton()
    let cyTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ""
        
        cyTextField.frame = CGRectMake(100, 20, self.view.frame.size.width-150, 40)
        cyTextField.backgroundColor = UIColor.clearColor()
        cyTextField.placeholder = "请输入网址"
        cyTextField.layer.borderColor = define.RGB(220, g: 220, b: 220).CGColor
        cyTextField.layer.borderWidth = 0.5
        cyTextField.layer.cornerRadius = 4.0
        cyTextField.keyboardType = UIKeyboardType.WebSearch
        self.navigationController?.view.addSubview(cyTextField)
        
        cyButton.frame = CGRectMake(self.view.frame.size.width-50, 20, 50, 40)
        cyButton.backgroundColor = UIColor.clearColor()
        cyButton.setTitle("GO", forState: UIControlState.Normal)
        cyButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        cyButton.addTarget(self, action: #selector(cyButtonAction), forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationController?.view.addSubview(cyButton)
        
        bgView.backgroundColor = UIColor.whiteColor()
        bgView.frame = CGRectMake(0, define.CY_NAVBAR_AND_STATUS_HEIGHT(self), define.CY_VIEW_WIDTH(self.view), define.CY_VIEW_HEIGHT(self.view)-define.CY_NAVBAR_AND_STATUS_HEIGHT(self))
        self.view.addSubview(bgView)
        
        cyWebView.frame = CGRectMake(0, -define.CY_NAVBAR_AND_STATUS_HEIGHT(self), self.view.frame.size.width, self.view.frame.size.height)
        cyWebView.backgroundColor = UIColor.clearColor()
        bgView.addSubview(cyWebView)
        
       
    }
    
    func cyButtonAction() {
        cyTextField.resignFirstResponder()
        
        var str:String = cyTextField.text!
        str = str.lowercaseString
        
        if !str.hasPrefix("http://") {
            str = "http://" + str
        }
        
         cyWebView.loadRequest(NSURLRequest(URL: NSURL(string: str)!))
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        cyTextField.removeFromSuperview()
        cyButton.removeFromSuperview()
    }

}
