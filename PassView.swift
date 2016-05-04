//
//  PassView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/28.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit


//暂未配置数据

class PassView: UIView {

    //var model
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createEnyoyLabel()
        self.createLine()
        self.createCodeLabel()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func createEnyoyLabel(){
        let passLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height/2))
        passLabel.textColor = UIColor.blackColor()
        passLabel.text = "ENJOY  PASS"
        passLabel.font = UIFont.systemFontOfSize(24)
        passLabel.textAlignment = .Center
        self.addSubview(passLabel)
    }
    
    func createLine(){
        let imgView = UIImageView(frame: CGRect(x: 40, y: frame.height/2, width: frame.width-80, height: 0.5))
        imgView.backgroundColor = UIColor.grayColor()
        self.addSubview(imgView)
    }
    
    
    
    func createCodeLabel(){
        let codeLabel = UILabel(frame: CGRect(x: 0, y: frame.height/2, width: frame.width, height: frame.height/2))
        codeLabel.textColor = UIColor.blackColor()
        codeLabel.text = "您还没有可使用的礼遇消费码"
        codeLabel.font = UIFont.systemFontOfSize(12)
        codeLabel.textAlignment = .Center
        self.addSubview(codeLabel)
        
    }
}
