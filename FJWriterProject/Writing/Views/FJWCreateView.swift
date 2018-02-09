//
//  FJWCreateView.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/9.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit

class FJWCreateView: UIView {
    @IBOutlet weak var lineLabel1: UILabel!
    @IBOutlet weak var lineLabel2: UILabel!
    @IBOutlet weak var lineLabel3: UILabel!
    
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var confirmBtn: UIButton!
    
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var worksTextField: UITextField!
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var worksName: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(white: 0.5, alpha: 0.6)
        lineLabel1.backgroundColor = UIColor.brightGrey
        lineLabel2.backgroundColor = UIColor.brightGrey
        lineLabel3.backgroundColor = UIColor.brightGrey
        
//        cancelBtn.addTarget(self, action: #selector(cancelBtnClick(btn:)), for: .touchUpInside)
//        confirmBtn.addTarget(self, action: #selector(confirmBtnClick(btn:)), for: .touchUpInside)
        
    }
    @IBAction func cancelBtnClicked(_ sender: Any) {
         self.removeFromSuperview()
    }
    
    @IBAction func confirmBtnClicked(_ sender: Any) {
        let author = authorTextField.text
        let works = worksTextField.text
        print(author as Any)
        print(works as Any)
        self.removeFromSuperview()
        
    }
    //    @objc private func cancelBtnClick(btn: UIButton) {
//        self.removeFromSuperview()
//    }
    
//    @objc private func confirmBtnClick(btn: UIButton){
//        let author = authorTextField.text
//        let works = worksTextField.text
//        print(author as Any)
//        print(works as Any)
//        self.removeFromSuperview()
//    }
    
}
