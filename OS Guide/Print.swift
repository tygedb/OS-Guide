//
//  Print.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
//DONE
@IBDesignable
class Print: UIButton {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor] as CFArray, locations: [0.01, 1, 1, 1, 1])!
        
        /// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 2, y: 0, width: 286, height: 41), cornerRadius: 11)
        context!.saveGState()
        rectanglePath.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 145, y: -0), end: CGPoint(x: 145, y: 41), options: CGGradientDrawingOptions())
        context!.restoreGState()
        
        
        
        
        
        //// Press Me! Drawing
        let pressMeRect = CGRect(x: 52, y: 7, width: 186, height: 27)
        let pressMeTextContent = NSString(string: "Print!")
        let pressMeStyle = NSMutableParagraphStyle()
        pressMeStyle.alignment = .center
        
        let pressMeFontAttributes = [NSFontAttributeName: UIFont(name: "CourierNewPSMT", size: 21)!, NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: pressMeStyle]
        
        let pressMeTextHeight: CGFloat = pressMeTextContent.boundingRect(with: CGSize(width: pressMeRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: pressMeFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: pressMeRect)
        pressMeTextContent.draw(in: CGRect(x: pressMeRect.minX, y: pressMeRect.minY + (pressMeRect.height - pressMeTextHeight) / 2, width: pressMeRect.width, height: pressMeTextHeight), withAttributes: pressMeFontAttributes)
        context?.restoreGState()
    }
 

}
