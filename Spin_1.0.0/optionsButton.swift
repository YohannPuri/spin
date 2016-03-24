//
//  optionsButton.swift
//  Spin_1.0.0
//
//  Created by Yohann Puri on 3/23/16.
//  Copyright © 2016 Yohann Puri. All rights reserved.
//

import UIKit
@IBDesignable
class optionsButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override func drawRect(rect: CGRect) {
        
        let path = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: 18.0, startAngle: CGFloat(0.0), endAngle: CGFloat(2*M_PI), clockwise: true)
        path.lineWidth = 2.0
        UIColor.clearColor().setFill()
        path.fill()
        UIColor.blackColor().setStroke()
        path.stroke()
    
    }
}