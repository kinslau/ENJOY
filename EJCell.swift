//
//  EJCell.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/4/28.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class EJCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var infoBtn: UIButton!
    
    //var cellModel
    
    @IBAction func moreInfoBtn(sender: UIButton) {
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

   
    }
    
}
