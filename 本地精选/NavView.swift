//
//  NavView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/28.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit


protocol NavDelegate {
    func navBtnDidClicked(tag:Int)
}


//交互逻辑暂未完善
class NavView: UIView {
    
    var btn1:UIButton!
    var btn2:UIButton!
    var btn3:UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blackColor()

    }
    
    func go(){
        print("go")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addNavView(){
        let nav = UIView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64))
        nav.backgroundColor = UIColor.blackColor()
        let enjoylabel = UILabel()
        enjoylabel.frame = CGRect(x: 0, y: 10, width: 100, height: 40)
        enjoylabel.textColor = UIColor.whiteColor()
        enjoylabel.font = UIFont.systemFontOfSize(24)
        enjoylabel.text = "ENJOY"
        enjoylabel.textAlignment = .Center
        enjoylabel.center.x = nav.center.x
        nav.addSubview(enjoylabel)
        
        
        let locationBtn = UIButton(frame: CGRect(x: 0, y: 20, width: 50, height: 30))
        locationBtn.backgroundColor = UIColor.blackColor()
        locationBtn.setTitle("长沙", forState: .Normal)
        locationBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        nav.addSubview(locationBtn)
        self.addSubview(nav)
    }
    func addTitleView(){
        
        btn1 = UIButton(frame: CGRect(x: 0, y: 10, width: 50, height: 30))
        btn1.backgroundColor = UIColor.blackColor()
        btn1.setTitle("新品", forState: .Normal)
        btn1.setTitleColor(UIColor.whiteColor(), forState: .Selected)
        btn1.addTarget(self, action: #selector(go), forControlEvents: .TouchUpInside)
        self.addSubview(btn1)
        
        btn2 = UIButton(frame: CGRect(x: 70, y: 10, width: 60, height: 30))
        btn2.backgroundColor = UIColor.blackColor()
        btn2.setTitle("下午茶", forState: .Normal)
        btn2.setTitleColor(UIColor.whiteColor(), forState: .Selected)
        btn2.addTarget(self, action: #selector(go), forControlEvents: .TouchUpInside)
        self.addSubview(btn2)
        
        btn3 = UIButton(frame: CGRect(x: frame.width-80, y: 10, width: 72, height: 30))
        btn3.backgroundColor = UIColor.blackColor()
        btn3.setTitle("热门分类", forState: .Normal)
        btn3.setTitleColor(UIColor.whiteColor(), forState: .Selected)
        btn3.addTarget(self, action: #selector(go), forControlEvents: .TouchUpInside)
        self.addSubview(btn3)
        
    }
    
    
    
}
