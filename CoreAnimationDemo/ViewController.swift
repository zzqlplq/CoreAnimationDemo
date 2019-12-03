//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/11/26.
//  Copyright © 2019 郑志强. All rights reserved.
//

import CoreGraphics
import UIKit

class ViewController: UIViewController, CAAnimationDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let optionsView = SelectOptionView.init(frame: CGRect(x: 20, y: 100, width: 100, height: 40))
    
        optionsView.backgroundColor = .red
        
        optionsView.options = ["default", "value1", "value2"]
        
        self.view.addSubview(optionsView)
    }
    
    
//    var redLayer = CALayer()
//    var greenLayer = CALayer()
//
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        redLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        redLayer.backgroundColor = UIColor.red.cgColor
//
//        redLayer.transform = CATransform3DMakeRotation(45, 0, 0, 1)
//
//        greenLayer.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
//        greenLayer.backgroundColor = UIColor.green.cgColor
//
//        greenLayer.transform = CATransform3DMakeRotation(45, 0, 0, 1)
//
//
//        let image = UIImage(named: "empty")
//        greenLayer.contents = image?.cgImage
//
//        greenLayer.shadowRadius = 2
//        greenLayer.shadowOpacity = 1
//        greenLayer.shadowColor = UIColor.blue.cgColor
//
//        self.view.layer.addSublayer(redLayer)
//        self.view.layer.addSublayer(greenLayer)
//
//        redLayer.zPosition = 1
//
//        let btn = UIButton(frame: CGRect(x: 200, y: 400, width: 100, height: 40))
//        btn.backgroundColor = .blue
//        btn.addTarget(self, action: #selector(btnTap), for: .touchUpInside)
//        self.view.addSubview(btn)
//
//        let keyframeAnimation = CAKeyframeAnimation.init()
//
//        let timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
//
//
//
//    }

//    @objc func btnTap() {
//
//        let color = UIColor(red: CGFloat(arc4random() / UInt32(INT_MAX)), green: CGFloat(arc4random() / UInt32(INT_MAX)), blue: CGFloat(arc4random() / UInt32(INT_MAX)), alpha: 1)
//
//        let anim = CAKeyframeAnimation.init(keyPath: "backgroundColor")
//
//
//        let animation = CABasicAnimation.init(keyPath: "backgroundColor")
//        animation.toValue = color.cgColor
//        animation.delegate = self
//
//        animation.setValue(22, forKey: "number")
//
//        self.redLayer.add(animation, forKey: nil)
//
//        print("before animation == \(animation)")
//
//
////        print("animation duration \(CATransaction.animationDuration())")
////
////        CATransaction.begin()
////        CATransaction.setAnimationDuration(1)
////        CATransaction.setCompletionBlock {
////
////        }
////        greenLayer.backgroundColor = UIColor.red.cgColor
////        CATransaction.commit()
//    }
    
    
    
//    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
//
//        print("after animation == \(anim)")
//
//        CATransaction.begin()
//        CATransaction.setDisableActions(true)
//        if let anim = anim as? CABasicAnimation {
//            self.redLayer.backgroundColor = (anim.toValue as! CGColor)
//            print("value == \(String(describing: anim.value(forKey: "number")))")
//
//        }
//        CATransaction.commit()
//    }
    
    
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//
//      let _ = touches.map { (touch) in
//            let point = touch.location(in: self.view)
//
////        if self.redLayer.hitTest(point) != nil {
////            let color = UIColor(red: CGFloat(arc4random() / UInt32(INT_MAX)), green: CGFloat(arc4random() / UInt32(INT_MAX)), blue: CGFloat(arc4random() / UInt32(INT_MAX)), alpha: 1)
////            let animation = CABasicAnimation.init(keyPath: "backgroundColor")
////            animation.toValue = color.cgColor
////            animation.delegate = self
////
////            self.redLayer.add(animation, forKey: nil)
////
////        } else {
////            CATransaction.begin()
////            CATransaction.setAnimationDuration(5.0)
////            self.redLayer.position = point
////            CATransaction.commit()
////        }
//
//
////            let layer = self.view.layer.hitTest(point)
//
//
//
////            if layer === self.redLayer {
////                print("touch red")
////            }
////
////            if layer === self.greenLayer {
////                print("touch green")
////            }
//
//        }
//    }
//
}

