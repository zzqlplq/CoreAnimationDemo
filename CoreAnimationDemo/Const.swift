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


protocol RawValueToArray: CaseIterable {
    static var toArray: [String] { get }
}


enum CAAnimationType: String, RawValueToArray {
    case basic = "CABasicAnimation"
    case keyframe = "CAKeyframeAnimation"
    case group = "CAAnimationGroup"
    
    static var toArray: [String] = CAAnimationType.allCases.map {"\($0.rawValue)"}
}


enum TransitionType: String, RawValueToArray {
    
    case fade
    case moveIn
    case push
    case reveal
    
    static var toArray: [String] = TransitionType.allCases.map{"\($0.rawValue)"}
}


enum TransitionSubtype: String, RawValueToArray {
    
    case fromRight
    case fromLeft
    case fromTop
    case fromBottom
    
    static var toArray: [String] = TransitionSubtype.allCases.map{"\($0.rawValue)"}
}
