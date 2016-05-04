//
//  SearchNavView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/3.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class SearchNavView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blackColor()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(into))
        self.addGestureRecognizer(gesture)
        
        
        let btn = UIButton(frame: CGRect(x: 25, y: 8, width: self.frame.width-50, height: self.frame.height-16))
        btn.backgroundColor = UIColor.whiteColor()
        btn.setTitle("Search", forState: .Normal)
        btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
        btn.layer.cornerRadius = 3
        self.addSubview(btn)
        
    
    }
    
    func into(){
        self.backgroundColor = UIColor.yellowColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
