//
//  EJViewController.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/27.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class EJViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureNav()
        
     

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //导航栏配置
    func configureNav(){
        self.navigationController?.navigationBarHidden = true
    }
    
    //一般基础性配置
    func generalConfigure(){
        
    }

    func configureRefresh(){
        
    }
}
