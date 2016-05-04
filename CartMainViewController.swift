//
//  CartMainViewController.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/4.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class CartMainViewController: EJViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.createCollectionView()
        self.generalConfigure()
        
        
        
      
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.view = nil
        
    }
    
    
    override func configureNav() {
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        self.title = "购物车"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(),NSFontAttributeName:UIFont.systemFontOfSize(17)]
        
    }
    
    override func generalConfigure() {
    
        self.automaticallyAdjustsScrollViewInsets = false
        
    }
    
    func createCollectionView(){
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Vertical
        layout.minimumLineSpacing = 5
        layout.footerReferenceSize = CGSizeMake(0, 50)
        layout.minimumInteritemSpacing = 5
        
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 64, width: SCREEN_WIDTH, height: SCRREN_HIGHT-64-49), collectionViewLayout: layout)
        
        collectionView.contentSize = CGSizeMake(0, SCRREN_HIGHT*4)
      
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.registerNib(UINib(nibName: "EJCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EJCollectionViewCell")
//        self.collectionView.registerClass(EJCollectionViewCell.self, forCellWithReuseIdentifier: "EJCollectionViewCell")
        self.view.addSubview(collectionView)
        
    }
    
    //
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    
    //Section个数
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    //cell size
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
        return CGSizeMake(SCREEN_WIDTH/2-12, 200)
    }
    
    //Header
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSizeMake(0, 200)
    }
    
    
    //返回Cell
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        let cell:EJCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("EJCollectionViewCell", forIndexPath: indexPath) as! EJCollectionViewCell
   
        return cell
    }
    //显示前配置Cell个性化数据，难够优化内存调度
    func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        guard let a = cell as? EJCollectionViewCell else{return}
        a.contentPriceLabel.text = "123.8"
        a.contentDescLabel.text = "关于你好的坏的，都已经听说，愿意深陷的是我"
        a.backgroundColor = UIColor.whiteColor()
        
    }
    
    //cell被选中
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    
    
}
