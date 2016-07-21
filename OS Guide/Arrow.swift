//
//  Arrow.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
@IBDesignable
class Arrow: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //// Bezier 2 Drawing
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 19, y: 0, width: 22, height: 69))
        UIColor.red().setFill()
        rectangle2Path.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 25.6, y: 68.62))
        bezier2Path.addCurve(to: CGPoint(x: 6, y: 60), controlPoint1: CGPoint(x: 15.81, y: 61.08), controlPoint2: CGPoint(x: 6, y: 60))
        bezier2Path.addLine(to: CGPoint(x: 30.17, y: 89.5))
        bezier2Path.addLine(to: CGPoint(x: 54, y: 60))
        bezier2Path.addLine(to: CGPoint(x: 35.5, y: 68.5))
        context!.saveGState()
        bezier2Path.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 30, y: 60), end: CGPoint(x: 30, y: 89.5), options: CGGradientDrawingOptions())
        context!.restoreGState()

    }
    

}
