//
//  FJWWritingViewController.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/1.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit

class FJWWritingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    fileprivate var collectionView: UICollectionView = {
        let v = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        v.backgroundColor = UIColor.white
        v.register(UINib(nibName: "FJWAddCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FJWAddCollectionViewCell")
        return v
    }()
    
    fileprivate var createView: FJWCreateView = {
        let v = Bundle.main.loadNibNamed("FJWCreateView", owner: nil, options: nil)?.first as! FJWCreateView
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "作品"
        view.backgroundColor = UIColor.white
        addCollectionView()
    }

    private func addCollectionView() {
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    //MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FJWAddCollectionViewCell", for: indexPath) as! FJWAddCollectionViewCell
        return cell
    }
    
    //MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(15, 20, 0, 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    //MARK: - UICollectionViewDelegate
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("点击了添加")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
