//
//  SortView.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/3.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class SortView: UIView {

    
    var titleHight:CGFloat = 60
    var btnSize:CGSize!
    var btnArray = [UIButton]()
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        self.createTitleView()
        self.createBtn()
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTitleView(){
        let titleView = UILabel(frame: CGRect(x: 0, y: 5, width: 50, height: titleHight-10))
        titleView.text = "分类"
        titleView.font = UIFont.systemFontOfSize(22)
        titleView.textColor = UIColor.blackColor()
        titleView.textAlignment = .Center
        titleView.center.x = self.center.x
        //Extension
        titleView.addBottomLine()
        self.addSubview(titleView)
        
    }
    
    func createBtn(){
        btnSize = CGSize(width: SCREEN_WIDTH/4, height: (self.frame.height-titleHight)/2.0)
        let btnWidth:CGFloat = btnSize.width
        let btnHight:CGFloat = btnSize.height
        var id = 0
       
        for i in 0...1{
            
            for j in 0...3{
                
                let btn = UIButton()
                btn.frame = CGRect(origin: CGPoint(x: CGFloat(j)*btnWidth, y: titleHight + CGFloat(i)*btnHight), size: btnSize)
                id += 10
                btn.tag = id
                btn.setImage(UIImage(named: "btn.jpg")!, forState: .Normal)
        
          
                btnArray.append(btn)
                btn.addTarget(self, action: #selector(click), forControlEvents: .TouchUpInside)
                self.addSubview(btn)
            }
        }
    }
    
    func click(sender:UIButton){
        switch sender.tag {
        case 10:
            print(" Index:\(sender.tag)")
        default:
            print(" Index:\(sender.tag)")
        }
        
    }

}
