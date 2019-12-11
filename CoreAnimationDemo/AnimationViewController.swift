//
//  AnimationViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/5.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class AnimationViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addSubviews() {
        
        let btn = UIButton(frame: CGRect(x: (screenWidth - 180)/2, y: screenHeight - 100, width: 180, height: 40))
        btn.backgroundColor = .black
        btn.setTitle("start Animation", for: .normal)
        btn.addTarget(self, action: #selector(startAnimation), for: .touchUpInside)
        self.view.addSubview(btn)
    }

    
    func reset() {
         
    }
    
    @objc func startAnimation() {
        
    }
    
}


extension AnimationViewController {
    
    func generateTestBtnView(title: String = "view") -> UIView {
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.backgroundColor = UIColor(red: CGFloat(arc4random() / UInt32(INT_MAX)), green: CGFloat(arc4random() / UInt32(INT_MAX)), blue: CGFloat(arc4random() / UInt32(INT_MAX)), alpha: 1)
        btn.setTitle(title, for: .normal)
        return btn
    }
    
 
    
}
