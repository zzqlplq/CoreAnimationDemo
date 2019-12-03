//
//  GuideViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/3.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class GuideViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultConfig()
        
//        print(animations)

    }
    
    func defaultConfig() {
        self.title = "目录"
    }

    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell(style: .default, reuseIdentifier: "cellId")
    }
    
    
    
    
    lazy var tableView: UITableView = {
      let tableView = UITableView.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
}
