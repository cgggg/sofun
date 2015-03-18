//
//  searchTableViewCell.swift
//  sofun
//
//  Created by 陈刚 on 15/3/11.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import UIKit

class searchTableViewCell: UITableViewCell {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var restLabel: UILabel!
    @IBOutlet var caipinImageView: UIImageView!
    @IBOutlet var shoucangImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
