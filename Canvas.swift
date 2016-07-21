//
//  Canvas.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class Canvas: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 320, height: 568))
        context!.saveGState()
        rectanglePath.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 160, y: -0), end: CGPoint(x: 160, y: 568), options: CGGradientDrawingOptions())
        context!.restoreGState()

    }
    

}
