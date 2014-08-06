//
//  ZhiShuCellTableViewCell.swift
//  weater
//
//  Created by newios on 14-8-6.
//  Copyright (c) 2014年 liaolongcheng. All rights reserved.
//

import UIKit

class ZhiShuCellTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
