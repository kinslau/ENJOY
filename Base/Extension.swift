//
//  Extension.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/28.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import Foundation
import UIKit


extension UIButton{
    
   // var leftTitle:UILabel!
    func setLeftTitle(title:String){
        let label = UILabel(frame: CGRect(x: 40, y: 20, width: self.frame.size.width-100, height: self.frame.size.height-40))
        label.text = title
        self.addSubview(label)
        
    }
    
    func addBottomLine(){
        let imgView = UIImageView(frame: CGRect(x: 40, y: self.frame.height-2, width: self.frame.width-80, height: 1))
        imgView.backgroundColor = UIColor.grayColor()
        self.addSubview(imgView)
    }
    
}


extension UILabel{
    
    
    func addBottomLine(){
        
        
        let imgView = UIImageView(frame: CGRect(x: 0, y: self.frame.height-5, width: self.frame.width, height: 1))
        imgView.backgroundColor = UIColor.blackColor()
        self.addSubview(imgView)
        
        let imgView2 = UIImageView(frame: CGRect(x: 0, y: self.frame.height-8, width: self.frame.width, height: 2))
        imgView2.backgroundColor = UIColor.blackColor()
        self.addSubview(imgView2)
    }
}