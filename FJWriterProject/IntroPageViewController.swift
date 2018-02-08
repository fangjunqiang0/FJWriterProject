//
//  IntroPageViewController.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/5.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class IntroPageViewController: UIViewController, UIScrollViewDelegate {
    
    fileprivate lazy var imageNames = ["newapp_1", "newapp_1", "newapp_1"];
    
    fileprivate var scrollView: UIScrollView = {
        let v = UIScrollView()
        v.isPagingEnabled = true
        v.showsVerticalScrollIndicator = false
        v.showsHorizontalScrollIndicator = false
        v.backgroundColor = UIColor.gray
        return v
    }()
    
    fileprivate var button: UIButton = {
        let v = UIButton()
        v.setTitle("进入", for: .normal)
        v.backgroundColor = UIColor.lightGray
        return v
    }()
    
    fileprivate var pageControl: UIPageControl = {
        let c = UIPageControl()
        c.currentPage = 0
        c.pageIndicatorTintColor = UIColor.lightGray
        c.currentPageIndicatorTintColor = UIColor.red
        return c
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addPageControl()
        buttonClick()
    }
    
    private func addViews() {
        scrollView.frame = view.bounds;
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(imageNames.count), height: view.frame.height)
        scrollView.delegate = self
        view.addSubview(scrollView)
        
        for i in 0...imageNames.count - 1 {
            let imageName = imageNames[i]
            let imageView = UIImageView(frame: CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height))
            imageView.image = UIImage(named: imageName)
            imageView.contentMode = .scaleToFill
            
            scrollView.addSubview(imageView)
            
            if i == imageNames.count - 1 {
                scrollView.addSubview(button)
                button.snp.makeConstraints({ (make) in
                    make.bottom.equalTo(imageView.snp.bottom).offset(-40)
                    make.centerX.equalTo(imageView.snp.centerX)
                    make.width.equalTo(60)
                    make.height.equalTo(40)
                })
                
            }
        }
    }
    
    private func buttonClick() {
//        button.rx.tap.
    }
    
    private func addPageControl() {
        pageControl.numberOfPages = imageNames.count
        view.addSubview(pageControl)
        pageControl.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(20)
            make.bottom.equalToSuperview().offset(-20)
        }
    }

    // MARK: - UIScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page: Int = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        if page == imageNames.count - 1 {
            pageControl.isHidden = true
        } else {
            pageControl.isHidden = false
        }
        pageControl.currentPage = page
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
