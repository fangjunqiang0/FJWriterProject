//
//  FJWLatelyViewController.swift
//  FJWriterProject
//
//  Created by fjq on 2018/2/1.
//  Copyright © 2018年 fangjq. All rights reserved.
//

import UIKit
import SnapKit

class FJWLatelyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    fileprivate var tableView: UITableView = {
        let v = UITableView()
        v.separatorStyle = .none
        v.register(UINib(nibName: "FJWLatelyTableViewCell", bundle: nil), forCellReuseIdentifier: "FJWLatelyTableViewCell")
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "记录"
        view.backgroundColor = UIColor.white
        addTableView()
    }
    
    
    private func addTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    // MARK: - tableViewDateSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FJWLatelyTableViewCell", for: indexPath)
        
        return cell
    }
    
    // MAKR: - tableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
