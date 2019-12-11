//
//  CATransitionViewController.swift
//  CoreAnimationDemo
//
//  Created by 郑志强 on 2019/12/5.
//  Copyright © 2019 郑志强. All rights reserved.
//

import UIKit

class CATransitionViewController: AnimationViewController {
    
    var type: CATransitionType = .fade
    var subtype: CATransitionSubtype = .fromTop
    var oldView: UIView!
    var newView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        self.title = "CATransition"
    }

    override func addSubviews() {

        super.addSubviews()
        
         oldView = generateTestBtnView(title: "oldView")
        self.view.addSubview(oldView)
        
        newView = generateTestBtnView(title: "newView")
        self.view.addSubview(newView)
        
        let typeOptionView = SelectOptionView.init(frame: CGRect(x: 20, y: screenHeight/2, width: 160, height: 50), title: "type")
        typeOptionView.options = TransitionType.toArray
        typeOptionView.selected { [unowned self] (index) in
            self.type = TransitionType.realProperty[index]
        }
        self.view.addSubview(typeOptionView)
        
        
        let subtypeOptionView = SelectOptionView.init(frame: CGRect(x: 180, y: screenHeight/2, width: 160, height: 50), title: "subtype")
        subtypeOptionView.options = TransitionSubtype.toArray
        subtypeOptionView.selected { [unowned self] (index) in
            self.subtype = TransitionSubtype.realProperty[index]
        }
        self.view.addSubview(subtypeOptionView)

    }
    
    
    override func reset() {
         
    }

    override func startAnimation() {
        
        let transition = CATransition.init()
        transition.type = self.type
        transition.subtype = self.subtype
        self.newView.layer.add(transition, forKey: nil)
    }
    
    
}

