//
//  FJWWorksCollectionViewCell.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/9.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit

class FJWWorksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var worksName: UILabel!
    @IBOutlet weak var authLabel: UILabel!
    @IBOutlet weak var linelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        worksName.textColor = UIColor.themeColor
        linelabel.backgroundColor = UIColor.brightGrey
        authLabel.textColor = UIColor.mediumGrey
        
    }

}
