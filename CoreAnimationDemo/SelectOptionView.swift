//
//  SelectOptionView.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/2.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class SelectOptionView: UIView {
    
    typealias selectedBlock = (Int) -> ()

    var titleLab: UILabel!
    var contentLab: UILabel!
    private var optionView: OptionsView?
    var options: [String]?
    var selected: selectedBlock?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(frame: CGRect, title: String) {
        super.init(frame: frame)
        addSubviews()
        contentLab.text = title
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandle))
        self.addGestureRecognizer(tap)
    }

    func addSubviews() {
        contentLab = UILabel.init()
        contentLab.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(contentLab)
        
        titleLab = UILabel.init()
        titleLab.font = UIFont.systemFont(ofSize: 14)
        titleLab.text = "select"
        self.addSubview(titleLab)
    }
    
    @objc func tapHandle() {
        guard let options = self.options, options.count > 0 else { return }
        if self.optionView == nil {
            self.optionView = OptionsView(originFrame: self.frame , options: options)
            self.optionView!.show()
            self.optionView!.selected { [unowned self] (index) in
                self.contentLab.text = options[index]
                self.selected?(index)
            }
        } else {
            self.optionView!.hide()
            self.optionView = nil
        }
    }
    
    func selected(_ block: selectedBlock?) {
        self.selected = block
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.titleLab.frame = CGRect(x: 0, y: 0, width: self.bounds.width / 3, height: self.bounds.height)
        self.contentLab.frame = CGRect(x: self.titleLab.bounds.width, y: 0, width: self.bounds.width / 3 * 2, height: self.bounds.height)
    }
}




private class OptionsView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    typealias selectedBlock = (Int) -> ()

    var tableView: UITableView!
    var options: [String]
    let originFrame: CGRect
    var selected: selectedBlock?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(originFrame: CGRect, options: [String]) {
        self.options = options
        self.originFrame = originFrame
        super.init(frame: .zero)
    }
    
    func show() {

        self.tableView = UITableView(frame: .zero)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.addSubview(self.tableView)
        
        let keyWindow = UIApplication.shared.windows.first
        keyWindow?.addSubview(self)
        
        let fromRect = self.convert(self.originFrame, to: keyWindow)
        self.frame = CGRect(x: fromRect.minX, y: fromRect.maxY, width: fromRect.width, height: OptionsView.cellHeight * CGFloat(self.options.count))

        self.tableView.reloadData()
    }
    
    func hide() {
        self.removeFromSuperview()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.tableView.frame = self.bounds
    }
    
    
    func selected(_ block: selectedBlock?) {
        self.selected = block
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return OptionsView.cellHeight
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: OptionsView.cellId) ?? UITableViewCell.init(style: .default, reuseIdentifier: OptionsView.cellId)
        cell.textLabel?.text = self.options[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        self.selected?(indexPath.row)
    }
}



 extension OptionsView {
    static let cellHeight: CGFloat = 40
    static let cellId = "optionCellId"
}
