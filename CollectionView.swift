//
//  CollectionView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/3.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class CollectionView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
  
    
    func layoutView(var row row:Int,title:String){
        
        row -= 1
        var titleHight:CGFloat = 50
    
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: titleHight))
        titleLabel.addBottomLine()
        titleLabel.text = title
        titleLabel.textAlignment = .Center
        titleLabel.center.x = self.center.x
        titleLabel.textColor = UIColor.blackColor()
        self.addSubview(titleLabel)
        
        
        for i in 0...row{
            for j in 0...1{
                //ItemView
                let itemView = ItemView(frame: CGRect(origin: CGPoint(x: 10+(itemViewSize.width+10)*CGFloat(j), y: 10+titleHight+(itemViewSize.height+5)*CGFloat(i)), size: itemViewSize))
                
                self.addSubview(itemView)
            }
        }
        
        
    }
    
    
    func addMoreBtn(){
        let detailBtn = UIButton(frame: CGRect(x: 0, y: self.frame.height-40, width: self.frame.width, height: 40))
        detailBtn.setTitle("更多", forState: .Normal)
        detailBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.addSubview(detailBtn)
    }
}
