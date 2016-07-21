//
//  PressMe.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class PressMe: UIButton {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let color10 = UIColor(red: 0.667, green: 0.667, blue: 0.667, alpha: 0.572)
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        
        //// Variable Declarations
        let pressed = true
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 0, width: 279, height: 30), cornerRadius: 11)
        context?.saveGState()
        rectanglePath.addClip()
        context?.drawLinearGradient(redGradient, start: CGPoint(x: 140.5, y: -0), end: CGPoint(x: 140.5, y: 30), options: CGGradientDrawingOptions())
        context?.restoreGState()
        
        
        //// Press Me! Drawing
        let pressMeRect = CGRect(x: 48, y: 1, width: 186, height: 27)
        let pressMeTextContent = NSString(string: "Press Me!")
        let pressMeStyle = NSMutableParagraphStyle()
        pressMeStyle.alignment = .center
        
        let pressMeFontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 21), NSForegroundColorAttributeName: UIColor.black(), NSParagraphStyleAttributeName: pressMeStyle]
        
        let pressMeTextHeight: CGFloat = pressMeTextContent.boundingRect(with: CGSize(width: pressMeRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: pressMeFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clipTo(pressMeRect)
        pressMeTextContent.draw(in: CGRect(x: pressMeRect.minX, y: pressMeRect.minY + (pressMeRect.height - pressMeTextHeight) / 2, width: pressMeRect.width, height: pressMeTextHeight), withAttributes: pressMeFontAttributes)
        context?.restoreGState()
        
        
        if (pressed) {
            //// Rectangle 2 Drawing
            let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: 1, y: 0, width: 279, height: 30), cornerRadius: 11)
            color10.setFill()
            rectangle2Path.fill()
        }
}
}
