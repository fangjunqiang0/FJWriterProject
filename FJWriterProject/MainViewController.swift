//
//  RootViewController.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/1.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        print("rootViewcontroller")
        setRootViewControllers()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    fileprivate func setRootViewControllers () {
        let latelyNC = UINavigationController(rootViewController: FJWLatelyViewController())
        latelyNC.setTabbarItemAttribute(title: "记录", imageName: "lately_tabbar_default", selectedImageNamed: "lately_tabbar_selected")
        
        let writingNC = UINavigationController(rootViewController: FJWWritingViewController())
        writingNC.setTabbarItemAttribute(title: "作品", imageName: "writing_tabbar_default", selectedImageNamed: "writing_tabbar_selected")
        
        let userNC = UINavigationController(rootViewController: FJWUserViewController())
        userNC.setTabbarItemAttribute(title: "我的", imageName: "user_tabbar_default", selectedImageNamed: "user_tabbar_selected")
        
        viewControllers = [latelyNC, writingNC, userNC]
    }

}

extension UIViewController {
    func setTabbarItemAttribute(title: String, imageName: String, selectedImageNamed: String) {
        tabBarItem.title = title
        let image = UIImage(named: imageName)
        tabBarItem.image = image
//        tabBarItem.image = image?.withRenderingMode(.alwaysOriginal)
        let selectedImage = UIImage(named: selectedImageNamed)
        tabBarItem.selectedImage = selectedImage
//        tabBarItem.selectedImage = selectedImage?.withRenderingMode(.alwaysOriginal)
    }
}
