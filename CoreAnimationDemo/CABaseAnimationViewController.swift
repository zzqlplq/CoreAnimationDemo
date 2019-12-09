//
//  CABaseAnimationViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/5.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class CABaseAnimationViewController: AnimationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }

    
    func addSubviews() {
        self.view.addSubview(generateTestView())
    }
    
    
    

}
