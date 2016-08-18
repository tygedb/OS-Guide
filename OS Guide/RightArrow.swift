//
//  RightArrow.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/21/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
@IBDesignable
class RightArrow: UIView {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let color3 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color13 = UIColor(red: 0.133, green: 0.149, blue: 0.176, alpha: 1.000)
        
        //// Rectangle 2 Drawing
        context?.saveGState()
        context?.translateBy(x: 4.13, y: 30.02)
        context?.rotate(by: -90.14 * CGFloat(M_PI) / 180)
        
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 11, height: 131.88))
        color3.setFill()
        rectangle2Path.fill()
        
        context?.restoreGState()
        
        
        //// Bezier 2 Drawing
        context?.saveGState()
        context?.translateBy(x: 126, y: 41)
        context?.rotate(by: -91.49 * CGFloat(M_PI) / 180)
        
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 10.6, y: 8.62))
        bezier2Path.addCurve(to: CGPoint(x: 0, y: 0), controlPoint1: CGPoint(x: 0.81, y: 1.08), controlPoint2: CGPoint(x: 0, y: 0))
        bezier2Path.addLine(to: CGPoint(x: 15.17, y: 29.5))
        bezier2Path.addLine(to: CGPoint(x: 32.5, y: 0.5))
        bezier2Path.addLine(to: CGPoint(x: 20.5, y: 8.5))
        color13.setFill()
        bezier2Path.fill()
        
        context?.restoreGState()

    }
    

}
