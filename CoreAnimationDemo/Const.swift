//
//  Const.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/3.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height


enum CAAnimationType: String, CaseIterable {
    case basic = "CABasicAnimation"
    case keyframe = "CAKeyframeAnimation"
    case group = "CAAnimationGroup"
}

