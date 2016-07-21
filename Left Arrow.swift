//
//  Left Arrow.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/22/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
@IBDesignable
class Left_Arrow: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let gradient2Color = UIColor(red: 0.991, green: 0.001, blue: 0.001, alpha: 1.000)
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor, StyleKitName.ellipse1Color.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        let gradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [gradient2Color.cgColor], locations: [0])!
        
        //// Rectangle 2 Drawing
        context!.saveGState()
        context!.translate(x: 11.13, y: 20.15)
        context!.rotate(byAngle: -90.14 * CGFloat(M_PI) / 180)
        
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 7.99, height: 115.88))
        context!.saveGState()
        rectangle2Path.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 3.99, y: -0), end: CGPoint(x: 3.99, y: 115.88), options: CGGradientDrawingOptions())
        context!.restoreGState()
        
        context!.restoreGState()
        
        
        //// Bezier 2 Drawing
        context!.saveGState()
        context!.translate(x: 18.13, y: 1.98)
        context!.rotate(byAngle: 85.66 * CGFloat(M_PI) / 180)
        
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 9.69, y: 7.24))
        bezier2Path.addCurve(to: CGPoint(x: 2.85, y: 2.35), controlPoint1: CGPoint(x: 3.41, y: 3.17), controlPoint2: CGPoint(x: 2.85, y: 2.35))
        bezier2Path.addLine(to: CGPoint(x: 11.91, y: 16.82))
        bezier2Path.addLine(to: CGPoint(x: 21.04, y: 7.97))
        bezier2Path.addLine(to: CGPoint(x: 24.87, y: 4.48))
        bezier2Path.addLine(to: CGPoint(x: 16.68, y: 7.69))
        context!.saveGState()
        bezier2Path.addClip()
        context!.drawLinearGradient(gradient2, start: CGPoint(x: 13.86, y: 2.35), end: CGPoint(x: 13.86, y: 16.82), options: CGGradientDrawingOptions())
        context!.restoreGState()
        
        context!.restoreGState()
    }
    

}
