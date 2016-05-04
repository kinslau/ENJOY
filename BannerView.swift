//
//  BannerView.swift
//  宜家
//
//  Created by 移动互联网协会2 on 16/4/11.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit



class BannerView: UIView,UIScrollViewDelegate {


    
    var showScrollView:UIScrollView!
    var bannerArray = NSMutableArray()
    var timer = NSTimer()
    var pageControl:UIPageControl!
    
    
    
    init(frame: CGRect,banner:NSMutableArray) {
        super.init(frame: frame)
        self.bannerArray = banner
        self.createBannerView()
        
        
        print("_________")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("实例化 banner：\(frame)")
        if UIImage(named: "banner_02.jpg") != nil{
            self.bannerArray = [UIImage(named: "banner_01.jpg")!,UIImage(named: "banner_02.jpg")!,UIImage(named: "banner_03.jpg")!,UIImage(named: "banner_04.jpg")!]
            self.createBannerView()
        }else{
            print("nil")
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func createBannerView(){
        //基础配置
        showScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        
        showScrollView.pagingEnabled = true
        showScrollView.bounces = false
        showScrollView.showsHorizontalScrollIndicator = false
        showScrollView.delegate = self
        showScrollView.directionalLockEnabled = true
        showScrollView.contentInset = UIEdgeInsetsZero
        
        //利用 n+2 方法 index=0 前面加最后一张图片     index = count-1 后加第一张图片
        
        //最后一张放到index = 0的位置
        let lastImageView = UIImageView.init(frame: CGRectMake(0, 0, self.frame.width, self.frame.height))
        lastImageView.image = bannerArray[2] as? UIImage
        showScrollView.addSubview(lastImageView)
        
        //第一张放到 index = count 的位置
        let firstImageView = UIImageView.init(frame: CGRectMake(CGFloat(bannerArray.count+1)*self.frame.width, 0, self.frame.width, frame.height))

        
        firstImageView.image = bannerArray[0] as? UIImage
        
        showScrollView.addSubview(firstImageView)
        
        
        
        for(var index = 0 ;index < self.bannerArray.count ;index+=1)
        {
            
            let imageView = UIImageView(frame: CGRectMake(self.frame.width*CGFloat(index+1), 0, frame.width, self.frame.height))
            
            imageView.image = bannerArray[index] as? UIImage
            
            
            showScrollView.addSubview(imageView)
            
        }
        showScrollView.contentSize = CGSizeMake(self.frame.width*CGFloat(bannerArray.count+2), 0)
        showScrollView.contentOffset = CGPointMake(self.frame.width, 0)
        
        self.addSubview(showScrollView)
        
        
        
        
        
        
        //创建pageControl
        pageControl = UIPageControl(frame: CGRect(x: 0, y: self.frame.height-20, width: self.frame.width, height: 6))
        pageControl.numberOfPages = bannerArray.count
        let size = pageControl.sizeForNumberOfPages(bannerArray.count)
       
       // pageControl.layer.zPosition = 2
        //pageControl.center = CGPointMake(self.frame.width/2, pageControl.center.y)
        
        pageControl.pageIndicatorTintColor = UIColor(red: 228/255.0, green: 228/255.0, blue: 228/255.0, alpha: 1.0)
        pageControl.currentPageIndicatorTintColor = UIColor(red: 253/255.0, green: 99/255.0, blue: 99/255.0, alpha: 1.0)
      
   
        pageControl.currentPage = 0
        self.addSubview(pageControl)
        
        startTimer()
        
    }
    
    
    
    //开启timer
    func startTimer()
    {
        //开启timer
        timer = NSTimer(timeInterval: 4, target: self, selector: #selector(BannerView.autoMaticScroll), userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
        //NSRunLoopCommonModes  其他类似scollrVIew控件拖动 不会影响timer的执行
        //NSDefaultRunLoopMode  会暂停timer
    }
    
    
    //MARK:timer计时  滚动视图
    
    //timer 方法 ->改变pageControl.currentPage
    func autoMaticScroll()
    {
        //滑动到最后一张
        if(showScrollView.contentOffset.x == CGFloat(bannerArray.count+1)*self.frame.width)
        {
            showScrollView.contentOffset = CGPointMake(self.frame.width, 0)
            pageControl.currentPage = 0
        }else
        {
            let page = Int((showScrollView.contentOffset.x-self.frame.width) / self.frame.width)
            
            pageControl.currentPage = page
        }
        
        showScrollView.setContentOffset(CGPointMake(showScrollView.contentOffset.x+self.frame.width, 0), animated: true)
    }
    
    //MARK:scrollviewDelegate
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        //计算页数
        let page = Int( (showScrollView.contentOffset.x-self.frame.width) / self.frame.width)
        pageControl.currentPage = page
        //如果滑到 第一张
        if(showScrollView.contentOffset.x == 0)
        {
            showScrollView.contentOffset = CGPointMake(CGFloat(bannerArray.count)*self.frame.width, 0)
            pageControl.currentPage = bannerArray.count-1
        }else if(showScrollView.contentOffset.x == CGFloat(bannerArray.count+1)*self.frame.width)
        {
            //滑倒最后一张的时候
            showScrollView.contentOffset = CGPointMake(self.frame.width, 0)
            pageControl.currentPage = 0
        }
        
    }
    
    //抓住图片的时候 停止时钟
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        timer.invalidate()
    }
    //结束拖动状态时  开启时钟
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        startTimer()
    }
    
    
    
    
    
    
}

