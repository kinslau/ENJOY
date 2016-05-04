//
//  EJCollectionViewCell.swift
//  ENJOY
//
//  Created by 移动互联网协会2 on 16/5/4.
//  Copyright © 2016年 kinslau. All rights reserved.
//

import UIKit

class EJCollectionViewCell: UICollectionViewCell {
    
    

    @IBOutlet weak var contenImageView: UIImageView!

    @IBOutlet weak var contentDescLabel: UILabel!
    
    @IBOutlet weak var contentPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
       
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    
       
       
    }
    
    

}
