//
//  WeaterCellTableViewCell.swift
//  weater
//
//  Created by liaolongcheng on 13-8-5.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import UIKit

class WeaterCellTableViewCell: UITableViewCell {

    @IBOutlet var timeLable: UILabel!
    @IBOutlet var wenduLable: UILabel!
    @IBOutlet var fengliLable: UILabel!
    @IBOutlet var tianqiLable: UILabel!
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secandImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
 

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
}
