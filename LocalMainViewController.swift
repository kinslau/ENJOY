//
//  LocalMainViewController.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/28.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class LocalMainViewController: EJViewController,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,NavDelegate {
    
    var tableView:UITableView!
    var nav:NavView!
    var nav2:NavView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createNav()
        self.configureTableview()
  
    }
    
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        self.view = nil

    }
    

    //MARK: - 创建模拟导航栏
    func createNav(){
        self.automaticallyAdjustsScrollViewInsets = false
        
        nav = NavView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64))
        nav.addNavView()
        nav2 = NavView(frame: CGRect(x: 0, y: 64, width: SCREEN_WIDTH, height: 44))
        nav2.addTitleView()
        
        self.view.addSubview(nav)
        self.view.addSubview(nav2)
    }
    
    //Nav代理方法
    func navBtnDidClicked(tag: Int) {
        print(tag)
    }
    
    
    func refresh(){
      
    }

}


//MARK: - TableView 代理
extension LocalMainViewController{
    
    func configureTableview(){
        self.tableView = UITableView(frame: CGRect(x: 0, y: 64+40, width: SCREEN_WIDTH, height: SCRREN_HIGHT-64-44-40))
        self.tableView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .None
        let nib = UINib(nibName: "EJCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "EJCell")
        
        tableView.mj_header = MJRefreshNormalHeader(refreshingBlock: {
            print("refresh")
    
        })
        
        tableView.mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: { 
            print("up refresh")
        })
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EJCell", forIndexPath: indexPath) as! EJCell

        cell.selectionStyle = .None
        cell.infoBtn.backgroundColor = UIColor.whiteColor()
        cell.infoBtn.layer.cornerRadius = 5
        cell.infoBtn.layer.borderWidth = 1
        cell.infoBtn.layer.borderColor = UIColor.blackColor().CGColor
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 400
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 400
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       tableView.endUpdates()
        
    }
    
    
    
    
}













//MARK: - UIScroolView Delegate
extension LocalMainViewController{
    
    func configureScrollView(){
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
//        print(scrollView.contentOffset.y)
        
//        if scrollView.contentOffset.y < 64{
//            nav.frame.origin.y = -scrollView.contentOffset.y
//            nav2.frame.origin.y = -scrollView.contentOffset.y+64
//            
//            
//        }
    }
    
    
    
}
