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
        // Do any additional setup after loading the view.
    }

}


extension AnimationViewController {
    
    func generateTestView() -> UIView {
        let view = UIView(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        view.backgroundColor = UIColor(red: CGFloat(arc4random() / UInt32(INT_MAX)), green: CGFloat(arc4random() / UInt32(INT_MAX)), blue: CGFloat(arc4random() / UInt32(INT_MAX)), alpha: 1)

        return view
    }
    
    
}
