//
//  MineMainVC.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/27.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class MineMainVC: EJViewController {
    
    var backScrollView:UIScrollView!
    let headSize:CGSize = CGSize(width: 80.0, height: 80.0)
    var footerView:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureBackScrollView()
        self.createMessageCenter()
        self.ConfigureHeadView()
        self.createGiftBtn()
        self.createfooterView()
        self.createPass()

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.view = nil

    }
    
    func configureBackScrollView(){
        self.view.backgroundColor = UIColor.blackColor()
        self.automaticallyAdjustsScrollViewInsets = false
        self.backScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCRREN_HIGHT))
        //self.backScrollView.backgroundColor = UIColor.blackColor()
        self.backScrollView.pagingEnabled = true
        self.backScrollView.contentSize = CGSize(width: 0, height: SCRREN_HIGHT*1.3)
        self.backScrollView.showsVerticalScrollIndicator = false
        self.backScrollView.opaque = true
        self.view.addSubview(backScrollView)
        
    }
    
    //暂未配置数据
    func ConfigureHeadView(){
        
        
        let headView = UIImageView(frame: CGRect(x: SCREEN_WIDTH/2.0-headSize.width/2.0, y: 50, width: headSize.width, height: headSize.height))
        headView.layer.cornerRadius = headSize.width/2.0
        headView.layer.masksToBounds = true
        //头像配置
        let headImg = UIImage(named: "head")
        headView.image = headImg
        self.backScrollView.addSubview(headView)
        
        //手势
        let guesture = UITapGestureRecognizer(target: self, action: #selector(acountSetting))
        headView.userInteractionEnabled = true
        headView.addGestureRecognizer(guesture)
        
        let nickLabel = UILabel(frame: CGRect(x: SCREEN_WIDTH/2.0-headSize.width/2.0, y: 50+headSize.height+10, width: headSize.width, height: 20))
        nickLabel.textColor = UIColor.whiteColor()
        nickLabel.text = "kinslau"
        nickLabel.textAlignment = .Center
        self.backScrollView.addSubview(nickLabel)
    }
    
    
    //手势触发方法
    func acountSetting(){
        print("手势")
        let vc = AcountSettingVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func createMessageCenter(){
        let btn = UIButton(frame: CGRect(x: SCREEN_WIDTH-60, y: 20, width: 30, height: 20))
        btn.backgroundColor = UIColor.redColor()
        self.backScrollView.addSubview(btn)
        
    }
    
    func createGiftBtn(){
        let btn1 = UIButton(frame: CGRect(x: 40, y: 170, width: SCREEN_WIDTH/2-10-40, height: 40))
        let btn2 = UIButton(frame: CGRect(x: SCREEN_WIDTH/2+10, y: 170, width: SCREEN_WIDTH/2-10-40, height: 40))
        btn1.layer.borderColor = UIColor.whiteColor().CGColor
        btn1.layer.borderWidth = 2
        btn1.setTitle("我的礼券", forState: .Normal)
        btn1.tintColor = UIColor.whiteColor()
        btn2.layer.borderColor = UIColor.whiteColor().CGColor
        btn2.layer.borderWidth = 2
        btn2.setTitle("我喜欢的礼遇", forState: .Normal)
        
        self.backScrollView.addSubview(btn1)
        self.backScrollView.addSubview(btn2)
        
    }
    
    //礼券 暂未配置个性化数据
    func createPass(){
        let passView = PassView(frame: CGRect(x: 20, y: 240, width: SCREEN_WIDTH-40, height: 120))
        passView.backgroundColor = UIColor.whiteColor()
        passView.layer.cornerRadius = 10
        self.backScrollView.addSubview(passView)
    }
    
    //MARK: - 底部配置
    func createfooterView(){
        footerView = UIView(frame: CGRect(x: 0, y: 300, width: SCREEN_WIDTH, height: SCRREN_HIGHT))
        footerView.backgroundColor = UIColor.groupTableViewBackgroundColor()
        self.backScrollView.addSubview(footerView)
        self.configureFooter()
    }
    
    
    //Button（extension）
    func configureFooter(){
        
        let shareBtn = UIButton(frame: CGRect(x: 0, y: 100, width: SCREEN_WIDTH, height: 60))
        shareBtn.backgroundColor = UIColor.whiteColor()
        shareBtn.addTarget(self, action: #selector(contact), forControlEvents: .TouchUpInside)
        shareBtn.setLeftTitle("好礼相赠")
        shareBtn.tag = 100
        self.footerView.addSubview(shareBtn)

        
        let settingBtn = UIButton(frame: CGRect(x: 0, y: 160, width: SCREEN_WIDTH, height: 60))
        settingBtn.backgroundColor = UIColor.whiteColor()
        settingBtn.addTarget(self, action: #selector(contact), forControlEvents: .TouchUpInside)
        settingBtn.setLeftTitle("设置")
        settingBtn.addBottomLine()
        settingBtn.tag = 101
        self.footerView.addSubview(settingBtn)
        
        
        let contactBtn = UIButton(frame: CGRect(x: 0, y: 220, width: SCREEN_WIDTH, height: 60))
        contactBtn.backgroundColor = UIColor.whiteColor()
        contactBtn.addTarget(self, action: #selector(contact), forControlEvents: .TouchUpInside)
        contactBtn.setLeftTitle("联系我们")
        contactBtn.tag = 102
        self.footerView.addSubview(contactBtn)
    }
    
    func contact(sender:UIButton){
        switch sender.tag {
        case 100:
            print("gift")
        case 101:
            print("setting")
        case 102:
            print("contact us")
        default:
            break
        }
    }

}
