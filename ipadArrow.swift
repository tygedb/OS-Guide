//
//  ipadArrow.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class ipadArrow: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor] as CFArray, locations: [0.01, 1, 1, 1, 1])!
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 43, y: 12, width: 22, height: 140))
        UIColor.red.setFill()
        rectangle2Path.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 48.6, y: 149.62))
        bezier2Path.addCurve(to: CGPoint(x: 29, y: 141), controlPoint1: CGPoint(x: 38.81, y: 142.08), controlPoint2: CGPoint(x: 29, y: 141))
        bezier2Path.addLine(to: CGPoint(x: 53.17, y: 170.5))
        bezier2Path.addLine(to: CGPoint(x: 77, y: 141))
        bezier2Path.addLine(to: CGPoint(x: 58.5, y: 149.5))
        context!.saveGState()
        bezier2Path.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 53, y: 141), end: CGPoint(x: 53, y: 170.5), options: CGGradientDrawingOptions())
        context!.restoreGState()

        
    }
    

}
