//
//  ItemView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/3.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class ItemView: UIView {


    
    var itemImage:UIImage?
    var itemTitle:String?
    var itemDesc:String?
    var itemPrice:String?
    
    
    var entity:NSObject?{
        didSet{
            
//            self.itemImage = entity.xxx
//            
//            self.itemTitle = ""
            
        }
    }
    
    private var imgHight:CGFloat!
    private var TitleHight:CGFloat!
    private var descHight:CGFloat!
    private var priceHight:CGFloat!
    

    
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.grayColor()
       
        imgHight = self.frame.height/2
        TitleHight = 22
        descHight = 20
        priceHight = 20
        
        let itemImgView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: imgHight))
        let itemTitleLabel = UILabel(frame: CGRect(x: 0, y: imgHight, width: self.frame.width, height: TitleHight))
        let itemDescLabel = UILabel(frame: CGRect(x: 0, y: imgHight+TitleHight, width: self.frame.width, height: descHight))
        let priceLabel = UILabel(frame: CGRect(x: 0, y: imgHight+TitleHight+descHight, width: self.frame.width, height: priceHight))
        
        self.addSubview(itemImgView)
        self.addSubview(itemTitleLabel)
        self.addSubview(itemDescLabel)
        self.addSubview(priceLabel)
        
   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
}
