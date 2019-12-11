//
//  GuideViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/3.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class GuideViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    let animationTypes = CAAnimationType.toArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultConfig()
        addSubviews()
    }
    
    func defaultConfig() {
        self.title = "目录"
    }
    
    func addSubviews() {
        self.view.addSubview(self.tableView)
    }

    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animationTypes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: .cellId) ?? UITableViewCell.init(style: .default, reuseIdentifier: .cellId)
        cell.textLabel?.text = self.animationTypes[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
        let vc = CATransitionViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    lazy var tableView: UITableView = {
      let tableView = UITableView.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
}



extension String {
    static let cellId = "guideCellId"
}
