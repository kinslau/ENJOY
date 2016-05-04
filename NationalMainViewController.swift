//
//  NationalMainViewController.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/4.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class NationalMainViewController: EJViewController {
    
    private var backView:UIScrollView! = nil
    private let banner_Hight:CGFloat = SCRREN_HIGHT / 3
    private let sort_Hight:CGFloat = SCRREN_HIGHT / 3
    private let new_cell_hight:CGFloat = SCRREN_HIGHT/3 * 2 + 50
    private let hot_cell_hight:CGFloat = SCRREN_HIGHT/3 * 2 + 50
    private let recommend_cell_hight:CGFloat = SCRREN_HIGHT/3 * 4
    private let split_Hight:CGFloat = 10
    private var total_hight:CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureNav()
        self.generalConfigure()
        
        self.createBackView()
        self.createSlideView()
        self.createSorView()
        self.createNewCell()
        self.createHotCell()
        self.createRecommendCell()
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.view = nil

    }
    
    override func generalConfigure() {
        
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        self.automaticallyAdjustsScrollViewInsets = false
        self.navigationController?.navigationBarHidden = true
        
    }
    
    //配置个性化导航栏
    override func configureNav() {
        let navBar = SearchNavView(frame: CGRect(x: 0, y: 20, width: SCREEN_WIDTH, height: 44))
        self.view.addSubview(navBar)
    }
    
    func createBackView(){
        backView = UIScrollView(frame: CGRect(x: 0, y: 64, width: SCREEN_WIDTH, height: SCRREN_HIGHT-64-49))
        backView.contentInset = UIEdgeInsetsZero
        backView.contentSize = CGSizeMake(0, SCRREN_HIGHT*3.5)
        self.view.addSubview(backView)
        
    }
    
    func createSlideView(){
        
        let slide = BannerView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: banner_Hight))
        self.backView.addSubview(slide)
        total_hight = split_Hight + banner_Hight + total_hight
    }
    func createSorView(){
        let sort = SortView(frame: CGRect(x: 0, y: total_hight , width: SCREEN_WIDTH, height: sort_Hight))
        self.backView.addSubview(sort)
        total_hight = split_Hight + sort_Hight + total_hight
    }
    
    func createNewCell(){
        let cell = CollectionView(frame: CGRect(x: 0, y: total_hight, width: SCREEN_WIDTH, height: new_cell_hight))
        cell.layoutView(row: 2, title: "新品")
        cell.addMoreBtn()
        self.backView.addSubview(cell)
        total_hight = split_Hight + new_cell_hight + total_hight
    }

    
    
    func createHotCell(){
        let cell = CollectionView(frame: CGRect(x: 0, y: total_hight, width: SCREEN_WIDTH, height: hot_cell_hight))
        cell.layoutView(row: 2, title: "热卖")
        cell.addMoreBtn()
        self.backView.addSubview(cell)
        total_hight = split_Hight + hot_cell_hight + total_hight
    }
    
    func createRecommendCell(){
        let cell = CollectionView(frame: CGRect(x: 0, y: total_hight, width: SCREEN_WIDTH, height: recommend_cell_hight))
        cell.layoutView(row: 4, title: "推荐")
        self.backView.addSubview(cell)
    }
    
    
    
  
    
    
}
