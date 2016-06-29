//
//  CYViewController.swift
//  Cloud_Swift
//
//  Created by Cloud on 16/6/13.
//  Copyright © 2016年 巢 云. All rights reserved.
//

import UIKit



class CYViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var controls = ["UIView","UIImageView","UILable","UIButton","UIAlertView","UIWebView"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Controls"
        
        let cyTableView = UITableView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height), style: UITableViewStyle.Plain)
        cyTableView.backgroundColor = UIColor.clearColor()
        cyTableView.delegate = self
        cyTableView.dataSource = self
        self.view.addSubview(cyTableView)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.controls.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier)
        cell.textLabel?.text = controls[indexPath.row]
        cell.textLabel?.font = UIFont.systemFontOfSize(14.0)
        cell.textLabel?.textColor = UIColor.grayColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cyVw: UIViewController
        switch indexPath.row {
        case 0:
            cyVw = CYView()
        case 1:
            cyVw = CYImgVw()
        case 2:
            cyVw = CYLabel()
        case 3:
            cyVw = CYButton()
        case 4:
            cyVw = CYAlertView()
        default:
            cyVw = CYWebView()
        }
        cyVw.title = controls[indexPath.row]
        self.navigationController?.pushViewController(cyVw, animated: true)
    }
    
    
    
    
}
