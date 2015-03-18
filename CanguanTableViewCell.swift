//
//  canguanTableViewCell.swift
//  sofun
//
//  Created by 陈刚 on 15/3/7.
//  Copyright (c) 2015年 cg. All rights reserved.
//餐馆排行表单行

import UIKit

class canguanTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet var canguanImageView: UIImageView!
    @IBOutlet var paihangImageView: UIImageView!
    @IBOutlet var collectedImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
